# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Notifications < Vk::Schema::Namespace
      module Methods
        # Returns a list of notifications about other users' feedback to the current user's wall posts.
        class Get < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'notifications.get'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :count Number of notifications to return.
          #   @option arguments [String] :start_from @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Array] :filters Type of notifications to return:; 'wall' — wall posts; 'mentions' — mentions in wall posts, comments, or topics; 'comments' — comments to wall posts, photos, and videos; 'likes'  — likes; 'reposted' — wall posts that are copied from the current user's wall; 'followers' — new followers; 'friends' — accepted friend requests
          #   @option arguments [Integer] :start_time Earliest timestamp (in Unix time) of a notification to return. By default, 24 hours ago.
          #   @option arguments [Integer] :end_time Latest timestamp (in Unix time) of a notification to return. By default, the current time.
          #   @return [Notifications::Methods::Get]

          # @!group Arguments

          # @return [Integer] Number of notifications to return.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :start_from, API::Types::Coercible::String.optional.default(nil)
          # @return [Array] Type of notifications to return:; 'wall' — wall posts; 'mentions' — mentions in wall posts, comments, or topics; 'comments' — comments to wall posts, photos, and videos; 'likes'  — likes; 'reposted' — wall posts that are copied from the current user's wall; 'followers' — new followers; 'friends' — accepted friend requests
          attribute :filters, API::Types::Coercible::Array.optional.default(nil)
          # @return [Integer] Earliest timestamp (in Unix time) of a notification to return. By default, 24 hours ago.
          attribute :start_time, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Latest timestamp (in Unix time) of a notification to return. By default, the current time.
          attribute :end_time, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
