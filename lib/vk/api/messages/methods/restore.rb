# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      module Methods
        # Restores a deleted message.
        class Restore < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'messages.restore'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :message_id ID of a previously-deleted message to restore.
          #   @return [Messages::Methods::Restore]

          # @!group Arguments

          # @return [Integer] ID of a previously-deleted message to restore.
          attribute :message_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
