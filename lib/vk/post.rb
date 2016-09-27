# frozen_string_literal: true
require 'vk/base'

module Vk
  class Post < Base
    autoload :Wall, 'vk/post/wall'

    self.key_field = :post_id
    self.fields = [:id, :from_id, :to_id, :date, :text, :attachment, :comments, :likes, :copy_owner_id, :copy_post_id]

    class << self
      def find(*ids)
        options = ids.extract_options!
        if ids.count == 1
          id = ids.first
          identity_map[id] ||= new(id, options)
        else
          loaded_ids = ids & identity_map.keys
          ids_to_load = ids - loaded_ids
          identity_map.values_at(*loaded_ids).tap do |result|
            if ids_to_load.any?
              result << loader.get_wall_statuses(ids_to_load).map do |post|
                new(id_for(post), data: post)
              end
            end
          end
        end
      end

      def id_for(post)
        "#{post['to_id']}_#{post['id']}"
      end
    end

    def id
      @attributes[key_field]
    end

    def post_id
      @post_id ||= "#{to_id}_#{id}"
    end

    def to
      @to ||= Vk::User.find(read_attribute(:to_id))
    end

    def from
      @from ||= Vk::User.find(read_attribute(:from_id))
    end

    def date
      @date ||= Time.at(read_attribute(:date))
    end

    def copy_owner
      @copy_owner ||= Vk::User.find(read_attribute(:copy_owner_id))
    end

    def copy_post
      @copy_post ||= Vk::Post.find(read_attribute(:copy_owner_id))
    end

    def comments_count
      read_attribute(:comments)['count']
    end

    def likes_count
      read_attribute(:likes)['count']
    end

    def to_s
      text
    end

    protected

    def load_data(_options = {})
      @attributes = @attributes.merge(loader.get_wall_status(id))
    end
  end
end
