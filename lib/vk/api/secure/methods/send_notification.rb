# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Secure < Vk::Schema::Namespace
      module Methods
        # Sends notification to the user.
        class SendNotification < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'secure.sendNotification'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :user_ids @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Integer] :user_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [String] :message notification text which should be sent in 'UTF-8' encoding ('254' characters maximum).
          #   @return [Secure::Methods::SendNotification]

          # @!group Arguments

          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :user_ids, API::Types::Coercible::Array.optional.default(nil)
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :user_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] notification text which should be sent in 'UTF-8' encoding ('254' characters maximum).
          attribute :message, API::Types::Coercible::String
        end
      end
    end
  end
end
