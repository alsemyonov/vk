# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      module Methods
        # Returns a list of the current user's incoming or outgoing private messages.
        class Get < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'messages.get'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Boolean] :out '1' — to return outgoing messages; '0' — to return incoming messages (default)
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of messages.
          #   @option arguments [Integer] :count Number of messages to return.
          #   @option arguments [Integer] :time_offset Maximum time since a message was sent, in seconds. To return messages without a time limitation, set as '0'.
          #   @option arguments [Integer] :preview_length Number of characters after which to truncate a previewed message. To preview the full message, specify '0'.; "NOTE: Messages are not truncated by default. Messages are truncated by words."
          #   @option arguments [Integer] :last_message_id ID of the message received before the message that will be returned last (provided that no more than 'count' messages were received before it; otherwise 'offset' parameter shall be used).
          #   @return [Messages::Methods::Get]

          # @!group Arguments

          # @return [Boolean] '1' — to return outgoing messages; '0' — to return incoming messages (default)
          attribute :out, API::Types::Bool.optional
          # @return [Integer] Offset needed to return a specific subset of messages.
          attribute :offset, API::Types::Coercible::Int.optional
          # @return [Integer] Number of messages to return.
          attribute :count, API::Types::Coercible::Int.optional
          # @return [Integer] Maximum time since a message was sent, in seconds. To return messages without a time limitation, set as '0'.
          attribute :time_offset, API::Types::Coercible::Int.optional
          # @return [Integer] Number of characters after which to truncate a previewed message. To preview the full message, specify '0'.; "NOTE: Messages are not truncated by default. Messages are truncated by words."
          attribute :preview_length, API::Types::Coercible::Int.optional
          # @return [Integer] ID of the message received before the message that will be returned last (provided that no more than 'count' messages were received before it; otherwise 'offset' parameter shall be used).
          attribute :last_message_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
