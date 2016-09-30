# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Friends < Vk::Schema::Namespace
      module Methods
        # Returns information about the current user's incoming and outgoing friend requests.
        class GetRequests < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'friends.getRequests'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of friend requests.
          #   @option arguments [Integer] :count Number of friend requests to return (default 100, maximum 1000).
          #   @option arguments [Boolean] :extended '1' — to return response messages from users who have sent a friend request or, if 'suggested' is set to '1', to return a list of suggested friends
          #   @option arguments [Boolean] :need_mutual '1' — to return a list of mutual friends (up to 20), if any
          #   @option arguments [Boolean] :out '1' — to return outgoing requests; '0' — to return incoming requests (default)
          #   @option arguments [Integer] :sort Sort order:; '1' — by number of mutual friends; '0' — by date
          #   @option arguments [Boolean] :suggested '1' — to return a list of suggested friends; '0' — to return friend requests (default)
          #   @return [Friends::Methods::GetRequests]

          # @!group Arguments

          # @return [Integer] Offset needed to return a specific subset of friend requests.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of friend requests to return (default 100, maximum 1000).
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] '1' — to return response messages from users who have sent a friend request or, if 'suggested' is set to '1', to return a list of suggested friends
          attribute :extended, API::Types::Bool.optional.default(nil)
          # @return [Boolean] '1' — to return a list of mutual friends (up to 20), if any
          attribute :need_mutual, API::Types::Bool.optional.default(nil)
          # @return [Boolean] '1' — to return outgoing requests; '0' — to return incoming requests (default)
          attribute :out, API::Types::Bool.optional.default(nil)
          # @return [Integer] Sort order:; '1' — by number of mutual friends; '0' — by date
          attribute :sort, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] '1' — to return a list of suggested friends; '0' — to return friend requests (default)
          attribute :suggested, API::Types::Bool.optional.default(nil)
        end
      end
    end
  end
end
