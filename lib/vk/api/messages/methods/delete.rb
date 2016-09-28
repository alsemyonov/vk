# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      module Methods
        # Deletes one or more messages.
        class Delete < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'messages.delete'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :message_ids Message IDs.
          #   @option arguments [Boolean] :spam '1' — to mark message as spam.
          #   @return [Messages::Methods::Delete]

          # @!group Arguments

          # @return [Array] Message IDs.
          attribute :message_ids, API::Types::Coercible::Array.optional
          # @return [Boolean] '1' — to mark message as spam.
          attribute :spam, API::Types::Bool.optional
        end
      end
    end
  end
end
