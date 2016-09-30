# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Market < Vk::Schema::Namespace
      module Methods
        # Changes item place in a collection.
        class ReorderItems < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'market.reorderItems'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of an item owner community.
          #   @option arguments [Integer] :album_id ID of a collection to reorder items in. Set 0 to reorder full items list.
          #   @option arguments [Integer] :item_id Item ID.
          #   @option arguments [Integer] :before ID of an item to place current item before it.
          #   @option arguments [Integer] :after ID of an item to place current item after it.
          #   @return [Market::Methods::ReorderItems]

          # @!group Arguments

          # @return [Integer] ID of an item owner community.
          attribute :owner_id, API::Types::Coercible::Int
          # @return [Integer] ID of a collection to reorder items in. Set 0 to reorder full items list.
          attribute :album_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Item ID.
          attribute :item_id, API::Types::Coercible::Int
          # @return [Integer] ID of an item to place current item before it.
          attribute :before, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] ID of an item to place current item after it.
          attribute :after, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
