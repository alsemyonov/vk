# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      module Methods
        # Returns messages by their IDs.
        class GetById < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'messages.getById'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :message_ids Message IDs.
          #   @return [Messages::Methods::GetById]

          # @!group Arguments

          # @return [Array] Message IDs.
          attribute :message_ids, API::Types::Coercible::Array
        end
      end
    end
  end
end
