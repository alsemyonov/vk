# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      module Methods
        # Marks and unmarks messages as important (starred).
        class MarkAsImportant < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'messages.markAsImportant'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :message_ids IDs of messages to mark as important.
          #   @option arguments [Integer] :important '1' — to add a star (mark as important); '0' — to remove the star
          #   @return [Messages::Methods::MarkAsImportant]

          # @!group Arguments

          # @return [Array] IDs of messages to mark as important.
          attribute :message_ids, API::Types::Coercible::Array.optional
          # @return [Integer] '1' — to add a star (mark as important); '0' — to remove the star
          attribute :important, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
