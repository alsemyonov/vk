# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Newsfeed < Vk::Schema::Namespace
      module Methods
        # Returns a list of comments in the current user's newsfeed.
        class GetComments < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'newsfeed.getComments'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :count Number of comments to return. For auto feed, you can use the 'new_offset' parameter returned by this method.
          #   @option arguments [Array] :filters Filters to apply:; 'post' — new comments on wall posts; 'photo' — new comments on photos; 'video' — new comments on videos; 'topic' — new comments on discussions; 'note' — new comments on notes;
          #   @option arguments [String] :reposts Object ID, comments on repost of which shall be returned, e.g. 'wall1_45486'. (If the parameter is set, the 'filters' parameter is optional.);
          #   @option arguments [Integer] :start_time Earliest timestamp (in Unix time) of a comment to return. By default, 24 hours ago.
          #   @option arguments [Integer] :end_time Latest timestamp (in Unix time) of a comment to return. By default, the current time.
          #   @option arguments [String] :start_from Identificator needed to return the next oage with results. Value for this parameter returns in 'next_from' field.
          #   @option arguments [Array] :fields Additional fields of  and  to return.
          #   @return [Newsfeed::Methods::GetComments]

          # @!group Arguments

          # @return [Integer] Number of comments to return. For auto feed, you can use the 'new_offset' parameter returned by this method.
          attribute :count, API::Types::Coercible::Int.optional.default(30)
          # @return [Array] Filters to apply:; 'post' — new comments on wall posts; 'photo' — new comments on photos; 'video' — new comments on videos; 'topic' — new comments on discussions; 'note' — new comments on notes;
          attribute :filters, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
          # @return [String] Object ID, comments on repost of which shall be returned, e.g. 'wall1_45486'. (If the parameter is set, the 'filters' parameter is optional.);
          attribute :reposts, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] Earliest timestamp (in Unix time) of a comment to return. By default, 24 hours ago.
          attribute :start_time, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Latest timestamp (in Unix time) of a comment to return. By default, the current time.
          attribute :end_time, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] Identificator needed to return the next oage with results. Value for this parameter returns in 'next_from' field.
          attribute :start_from, API::Types::Coercible::String.optional.default(nil)
          # @return [Array] Additional fields of  and  to return.
          attribute :fields, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
        end
      end
    end
  end
end
