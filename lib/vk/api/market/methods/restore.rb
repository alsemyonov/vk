# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Market < Vk::Schema::Namespace
      module Methods
        # Restores recently deleted item
        class Restore < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'market.restore'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of an item owner community.
          #   @option arguments [Integer] :item_id Deleted item ID.
          #   @return [Market::Methods::Restore]

          # @!group Arguments

          # @return [Integer] ID of an item owner community.
          attribute :owner_id, API::Types::Coercible::Int
          # @return [Integer] Deleted item ID.
          attribute :item_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
