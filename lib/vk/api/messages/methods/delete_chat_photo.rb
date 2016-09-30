# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      module Methods
        # Deletes a chat's cover picture.
        class DeleteChatPhoto < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'messages.deleteChatPhoto'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :chat_id Chat ID.
          #   @return [Messages::Methods::DeleteChatPhoto]

          # @!group Arguments

          # @return [Integer] Chat ID.
          attribute :chat_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
