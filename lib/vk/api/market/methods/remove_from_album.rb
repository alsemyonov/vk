# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Market < Vk::Schema::Namespace
      module Methods
        # Removes an item from one or multiple collections.
        class RemoveFromAlbum < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'market.removeFromAlbum'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of an item owner community.
          #   @option arguments [Integer] :item_id Item ID.
          #   @option arguments [Array] :album_ids Collections IDs to remove item from.
          #   @return [Market::Methods::RemoveFromAlbum]

          # @!group Arguments

          # @return [Integer] ID of an item owner community.
          attribute :owner_id, API::Types::Coercible::Int
          # @return [Integer] Item ID.
          attribute :item_id, API::Types::Coercible::Int
          # @return [Array] Collections IDs to remove item from.
          attribute :album_ids, API::Types::Coercible::Array.member(API::Types::Coercible::Int)
        end
      end
    end
  end
end
