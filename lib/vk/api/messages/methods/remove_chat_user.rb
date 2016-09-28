# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      module Methods
        # Allows the current user to leave a chat or, if the current user started the chat, allows the user to remove another user from the chat.
        class RemoveChatUser < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'messages.removeChatUser'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :chat_id Chat ID.
          #   @option arguments [String] :user_id ID of the user to be removed from the chat.
          #   @return [Messages::Methods::RemoveChatUser]

          # @!group Arguments

          # @return [Integer] Chat ID.
          attribute :chat_id, API::Types::Coercible::Int.optional
          # @return [String] ID of the user to be removed from the chat.
          attribute :user_id, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
