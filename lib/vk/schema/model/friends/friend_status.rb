# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Friends
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class FriendStatus < Vk::Schema::Model
          # @return [Integer] User ID
          attribute :user_id, Schema::Types::Coercible::Int
          # @return [Integer] Friend status with the user
          attribute :friend_status, Schema::Types::Coercible::Int
          # @return [String] Message sent with request
          attribute :request_message, Schema::Types::Coercible::String.optional
          # @return [Integer] Information whether request is unviewed
          attribute :read_state, Schema::Types::Coercible::Int.optional
          # @return [String] MD5 hash for the result validation
          attribute :sign, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
