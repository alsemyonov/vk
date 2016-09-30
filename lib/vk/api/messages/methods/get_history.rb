# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      module Methods
        # Returns message history for the specified user or group chat.
        class GetHistory < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'messages.getHistory'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of messages.
          #   @option arguments [Integer] :count Number of messages to return.
          #   @option arguments [String] :user_id ID of the user whose message history you want to return.
          #   @option arguments [Integer] :peer_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Integer] :start_message_id Starting message ID from which to return history.
          #   @option arguments [Integer] :rev Sort order:; '1' — return messages in chronological order.; '0' — return messages in reverse chronological order.
          #   @return [Messages::Methods::GetHistory]

          # @!group Arguments

          # @return [Integer] Offset needed to return a specific subset of messages.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of messages to return.
          attribute :count, API::Types::Coercible::Int.optional.default(20)
          # @return [String] ID of the user whose message history you want to return.
          attribute :user_id, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :peer_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Starting message ID from which to return history.
          attribute :start_message_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Sort order:; '1' — return messages in chronological order.; '0' — return messages in reverse chronological order.
          attribute :rev, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
