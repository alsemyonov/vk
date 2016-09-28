# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Orders < Vk::Schema::Namespace
      module Methods
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class GetAmount < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'orders.getAmount'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Array] :votes @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Orders::Methods::GetAmount]

          # @!group Arguments

          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :user_id, API::Types::Coercible::Int.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :votes, API::Types::Coercible::Array.optional
        end
      end
    end
  end
end
