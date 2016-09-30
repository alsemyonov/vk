# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Secure < Vk::Schema::Namespace
      module Methods
        # Sets a counter which is shown to the user in bold in the left menu.
        class SetCounter < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'secure.setCounter'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :counters @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Integer] :user_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Integer] :counter counter value.
          #   @return [Secure::Methods::SetCounter]

          # @!group Arguments

          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :counters, API::Types::Coercible::Array.optional.default(nil)
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :user_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] counter value.
          attribute :counter, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
