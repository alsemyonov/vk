# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      module Methods
        # Creates a chat with several participants.
        class CreateChat < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'messages.createChat'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :user_ids IDs of the users to be added to the chat.
          #   @option arguments [String] :title Chat title.
          #   @return [Messages::Methods::CreateChat]

          # @!group Arguments

          # @return [Array] IDs of the users to be added to the chat.
          attribute :user_ids, API::Types::Coercible::Array.optional
          # @return [String] Chat title.
          attribute :title, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
