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

    def post_id
      "#{to_id}_#{id}"
    end
    memoize :post_id

    def to
      Vk::User.find(read_attribute(:to_id))
    end
    memoize :to

    def from
      Vk::User.find(read_attribute(:from_id))
    end
    memoize :from

    def date
      Time.at(read_attribute(:date))
    end
    memoize :date

    def copy_owner
      Vk::User.find(read_attribute(:copy_owner_id))
    end
    memoize :copy_owner

    def copy_post
      Vk::Post.find(read_attribute(:copy_owner_id))
    end
    memoize :copy_post

    protected

    def load_data(options = {})
      @attributes = @attributes.merge(loader.get_wall_status(id))
    end
  end
end
