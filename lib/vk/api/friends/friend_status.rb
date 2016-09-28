# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Friends < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class FriendStatus < Vk::Schema::Object
        # @return [Integer] User ID
        attribute :user_id, API::Types::Coercible::Int
        # @return [Integer] Friend status with the user
        attribute :friend_status, API::Types::Coercible::Int
        # @return [String] Message sent with request
        attribute :request_message, API::Types::Coercible::String.optional
        # @return [Integer] Information whether request is unviewed
        attribute :read_state, API::Types::Coercible::Int.optional
        # @return [String] MD5 hash for the result validation
        attribute :sign, API::Types::Coercible::String.optional
      end
    end
  end
end
