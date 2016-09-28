# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      module Methods
        # Edits the title of a chat.
        class EditChat < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'messages.editChat'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :chat_id Chat ID.
          #   @option arguments [String] :title New title of the chat.
          #   @return [Messages::Methods::EditChat]

          # @!group Arguments

          # @return [Integer] Chat ID.
          attribute :chat_id, API::Types::Coercible::Int.optional
          # @return [String] New title of the chat.
          attribute :title, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
