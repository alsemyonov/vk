# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      module Methods
        # Deletes all private messages in a conversation.
        class DeleteDialog < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'messages.deleteDialog'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :user_id User ID. To clear a chat history use 'chat_id'
          #   @option arguments [Integer] :peer_id Destination ID.; ; "For user:; 'User ID', e.g. '12345'.; ; For chat:; '2000000000' + 'chat_id', e.g. '2000000001'.; ; For community:; '- community ID', e.g. '-12345'.; "
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of messages.
          #   @option arguments [Integer] :count Number of messages to delete.; "NOTE: If the number of messages exceeds the maximum, the method shall be called several times."
          #   @return [Messages::Methods::DeleteDialog]

          # @!group Arguments

          # @return [String] User ID. To clear a chat history use 'chat_id'
          attribute :user_id, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] Destination ID.; ; "For user:; 'User ID', e.g. '12345'.; ; For chat:; '2000000000' + 'chat_id', e.g. '2000000001'.; ; For community:; '- community ID', e.g. '-12345'.; "
          attribute :peer_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of messages.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of messages to delete.; "NOTE: If the number of messages exceeds the maximum, the method shall be called several times."
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
