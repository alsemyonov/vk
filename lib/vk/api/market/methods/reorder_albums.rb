# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Market < Vk::Schema::Namespace
      module Methods
        # Reorders the collections list.
        class ReorderAlbums < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'market.reorderAlbums'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of an item owner community.
          #   @option arguments [Integer] :album_id Collection ID.
          #   @option arguments [Integer] :before ID of a collection to place current collection before it.
          #   @option arguments [Integer] :after ID of a collection to place current collection after it.
          #   @return [Market::Methods::ReorderAlbums]

          # @!group Arguments

          # @return [Integer] ID of an item owner community.
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [Integer] Collection ID.
          attribute :album_id, API::Types::Coercible::Int.optional
          # @return [Integer] ID of a collection to place current collection before it.
          attribute :before, API::Types::Coercible::Int.optional
          # @return [Integer] ID of a collection to place current collection after it.
          attribute :after, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
