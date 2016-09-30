# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Market < Vk::Schema::Namespace
      module Methods
        # Deletes a collection of items.
        class DeleteAlbum < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'market.deleteAlbum'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of an collection owner community.
          #   @option arguments [Integer] :album_id Collection ID.
          #   @return [Market::Methods::DeleteAlbum]

          # @!group Arguments

          # @return [Integer] ID of an collection owner community.
          attribute :owner_id, API::Types::Coercible::Int
          # @return [Integer] Collection ID.
          attribute :album_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
