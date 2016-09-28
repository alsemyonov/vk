# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      module Methods
        # Returns a list of the current user's conversations.
        class GetDialogs < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'messages.getDialogs'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of messages.
          #   @option arguments [Integer] :count Number of messages to return.
          #   @option arguments [Integer] :start_message_id ID of the message from what to return dialogs.
          #   @option arguments [Integer] :preview_length Number of characters after which to truncate a previewed message. To preview the full message, specify '0'.; "NOTE: Messages are not truncated by default. Messages are truncated by words."
          #   @option arguments [Boolean] :unread '1' — return unread messages only.
          #   @return [Messages::Methods::GetDialogs]

          # @!group Arguments

          # @return [Integer] Offset needed to return a specific subset of messages.
          attribute :offset, API::Types::Coercible::Int.optional
          # @return [Integer] Number of messages to return.
          attribute :count, API::Types::Coercible::Int.optional
          # @return [Integer] ID of the message from what to return dialogs.
          attribute :start_message_id, API::Types::Coercible::Int.optional
          # @return [Integer] Number of characters after which to truncate a previewed message. To preview the full message, specify '0'.; "NOTE: Messages are not truncated by default. Messages are truncated by words."
          attribute :preview_length, API::Types::Coercible::Int.optional
          # @return [Boolean] '1' — return unread messages only.
          attribute :unread, API::Types::Bool.optional
        end
      end
    end
  end
end
