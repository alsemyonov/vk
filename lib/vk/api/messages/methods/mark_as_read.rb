# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      module Methods
        # Marks messages as read.
        class MarkAsRead < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'messages.markAsRead'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :message_ids IDs of messages to mark as read.
          #   @option arguments [String] :peer_id Destination ID.; ; "For user:; 'User ID', e.g. '12345'.; ; For chat:; '2000000000' + 'chat_id', e.g. '2000000001'.; ; For community:; '- community ID', e.g. '-12345'.; "
          #   @option arguments [Integer] :start_message_id Message ID to start from.
          #   @return [Messages::Methods::MarkAsRead]

          # @!group Arguments

          # @return [Array] IDs of messages to mark as read.
          attribute :message_ids, API::Types::Coercible::Array.member(API::Types::Coercible::Int).optional.default(nil)
          # @return [String] Destination ID.; ; "For user:; 'User ID', e.g. '12345'.; ; For chat:; '2000000000' + 'chat_id', e.g. '2000000001'.; ; For community:; '- community ID', e.g. '-12345'.; "
          attribute :peer_id, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] Message ID to start from.
          attribute :start_message_id, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
