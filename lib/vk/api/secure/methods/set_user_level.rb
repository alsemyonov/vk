# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Secure < Vk::Schema::Namespace
      module Methods
        # Sets user game level in the application which can be seen by his/her friends.
        class SetUserLevel < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'secure.setUserLevel'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :levels @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Integer] :user_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Integer] :level level value.
          #   @return [Secure::Methods::SetUserLevel]

          # @!group Arguments

          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :levels, API::Types::Coercible::Array.optional.default(nil)
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :user_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] level value.
          attribute :level, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
