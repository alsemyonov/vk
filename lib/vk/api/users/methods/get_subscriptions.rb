# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Users < Vk::Schema::Namespace
      module Methods
        # Returns a list of IDs of users and communities followed by the user.
        class GetSubscriptions < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'users.getSubscriptions'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id User ID.
          #   @option arguments [Boolean] :extended '1' — to return a combined list of users and communities; '0' — to return separate lists of users and communities (default)
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of subscriptions.
          #   @option arguments [Integer] :count Number of users and communities to return.
          #   @option arguments [Array] :fields @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Users::Methods::GetSubscriptions]

          # @!group Arguments

          # @return [Integer] User ID.
          attribute :user_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] '1' — to return a combined list of users and communities; '0' — to return separate lists of users and communities (default)
          attribute :extended, API::Types::Bool.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of subscriptions.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of users and communities to return.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :fields, API::Types::Coercible::Array.optional.default(nil)
        end
      end
    end
  end
end
