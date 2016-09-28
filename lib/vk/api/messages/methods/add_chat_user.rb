# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      module Methods
        # Adds a new user to a chat.
        class AddChatUser < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'messages.addChatUser'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :chat_id Chat ID.
          #   @option arguments [Integer] :user_id ID of the user to be added to the chat.
          #   @return [Messages::Methods::AddChatUser]

          # @!group Arguments

          # @return [Integer] Chat ID.
          attribute :chat_id, API::Types::Coercible::Int.optional
          # @return [Integer] ID of the user to be added to the chat.
          attribute :user_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
