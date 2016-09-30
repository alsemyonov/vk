# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Newsfeed < Vk::Schema::Namespace
      module Methods
        # Returns data required to show newsfeed for the current user.
        class Get < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'newsfeed.get'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :filters Filters to apply:; 'post' — new wall posts; 'photo' — new photos; 'photo_tag' — new photo tags; 'wall_photo' — new wall photos; 'friend' — new friends; 'note' — new notes
          #   @option arguments [Boolean] :return_banned '1' — to return news items from banned sources
          #   @option arguments [Integer] :start_time Earliest timestamp (in Unix time) of a news item to return. By default, 24 hours ago.
          #   @option arguments [Integer] :end_time Latest timestamp (in Unix time) of a news item to return. By default, the current time.
          #   @option arguments [Integer] :max_photos Maximum number of photos to return. By default, '5'.
          #   @option arguments [String] :source_ids Sources to obtain news from, separated by commas.; ; User IDs can be specified in formats '' or 'u' ; where '' is the user's friend ID.; ; Community IDs can be specified in formats '-' or 'g' ; where '' is the community ID.; ; If the parameter is not set, all of the user's friends and communities are returned, except for banned sources, which can be obtained with the   method.;
          #   @option arguments [String] :start_from identifier required to get the next page of results. ; Value for this parameter is returned in 'next_from' field in a reply.
          #   @option arguments [Integer] :count Number of news items to return (default 50; maximum 100). For auto feed, you can use the 'new_offset' parameter returned by this method.
          #   @option arguments [Array] :fields Additional fields of  and  to return.
          #   @return [Newsfeed::Methods::Get]

          # @!group Arguments

          # @return [Array] Filters to apply:; 'post' — new wall posts; 'photo' — new photos; 'photo_tag' — new photo tags; 'wall_photo' — new wall photos; 'friend' — new friends; 'note' — new notes
          attribute :filters, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
          # @return [Boolean] '1' — to return news items from banned sources
          attribute :return_banned, API::Types::Form::Bool.optional.default(nil)
          # @return [Integer] Earliest timestamp (in Unix time) of a news item to return. By default, 24 hours ago.
          attribute :start_time, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Latest timestamp (in Unix time) of a news item to return. By default, the current time.
          attribute :end_time, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Maximum number of photos to return. By default, '5'.
          attribute :max_photos, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] Sources to obtain news from, separated by commas.; ; User IDs can be specified in formats '' or 'u' ; where '' is the user's friend ID.; ; Community IDs can be specified in formats '-' or 'g' ; where '' is the community ID.; ; If the parameter is not set, all of the user's friends and communities are returned, except for banned sources, which can be obtained with the   method.;
          attribute :source_ids, API::Types::Coercible::String.optional.default(nil)
          # @return [String] identifier required to get the next page of results. ; Value for this parameter is returned in 'next_from' field in a reply.
          attribute :start_from, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] Number of news items to return (default 50; maximum 100). For auto feed, you can use the 'new_offset' parameter returned by this method.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
          # @return [Array] Additional fields of  and  to return.
          attribute :fields, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
        end
      end
    end
  end
end
