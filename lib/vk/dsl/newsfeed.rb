# frozen_string_literal: true
require 'vk/error'

module Vk
  module DSL
    module Newsfeed
      FIELDS = %i(
        sex bdate city country photo_50 photo_100 photo_200_orig photo_200 photo_400_orig photo_max photo_max_orig
        online online_mobile domain has_mobile contacts connections site education universities schools
        can_post can_see_all_posts can_see_audio can_write_private_message status last_seen common_count
        relation relatives screen_name maiden_name timezone occupation activities interests music movies tv books games
        about quotes
      ).freeze

      class SearchItem < Vk::Base
        self.fields = ([
          :id, :owner_id, :from_id, :signer_id, :date, :text, :comments, :likes, :attachments, :geo
        ] + FIELDS).uniq.compact

        # @return [SearchResult]
        attr_accessor :search_result

        def as_search_result_of(search_result)
          self.search_result = search_result
          self
        end

        # @return [Vk::User, Vk::Group]
        def owner
          find_group_or_user(owner_id)
        end

        # @return [Vk::User, Vk::Group]
        def from
          find_group_or_user(from_id)
        end

        # @return [Vk::User]
        def signer
          find_group_or_user(signer_id)
        end

        def time
          Time.at(date)
        end

        private

        def find_group_or_user(user_or_group_id)
          user_or_group_id = user_or_group_id.to_i
          return if user_or_group_id.zero?
          if search_result
            if user_or_group_id.negative?
              search_result.groups.detect { |group| group.id == -user_or_group_id }
            else
              search_result.profiles.detect { |user| user.id == user_or_group_id }
            end
          else
            if user_or_group_id.negative?
              Vk::Group.new(-user_or_group_id)
            else
              Vk::User.new(user_or_group_id)
            end
          end
        end
      end

      class SearchResult
        # @return [Hash]
        attr_accessor :options

        # @param [Vk::Client] client
        # @param [Hash] options
        def initialize(client, options = {})
          @client = client
          @options = options
        end

        def result
          @result ||= @client.request('newsfeed.search', @options)
        end

        def fetch!
          result
          self
        end

        # @return [Array<SearchItem>]
        def items
          @items ||= result['items'].map do |item|
            SearchItem.new(item).as_search_result_of(self)
          end
        end

        # @return [Array<Vk::User>]
        def profiles
          @profiles ||= result['profiles'].map { |user| Vk::User.new(user) }
        end

        # @return [Array<Vk::Group>]
        def groups
          @groups ||= result['groups'].map { |group| Vk::Group.new(group) }
        end

        # @return [String]
        def next_from
          @next_from ||= result['next_from']
        end

        # @return [SearchResult]
        def next_page
          self.class.new(@client, options.merge(start_from: next_from))
        end
      end

      # Friends information
      # @param [Hash] options
      # @option options [String] :q search query string
      # @option options [Boolean] :extended search query string
      # @option options [Fixnum] :count (1000) how many posts to request
      # @option options [Numeric] :latitude -90 to 90
      # @option options [Numeric] :longitude -180 to 180
      # @option options [DateTime] :start_time
      # @option options [DateTime] :end_time
      # @option options [String] :start_from
      # @option options [Array<Symbol>] :fields see {FIELDS}
      # @return [SearchResult]
      def search(options = {})
        options[:extended] = !!options[:extended] ? 1 : 0 if options[:extended]
        options[:start_time] = options[:start_time].to_i if options[:start_time]
        options[:end_time] = options[:end_time].to_i if options[:end_time]
        options[:fields] = Array.wrap(options[:fields]).compact.join(',') if options[:fields]
        SearchResult.new(self, options).fetch!
      end
    end
  end
end
