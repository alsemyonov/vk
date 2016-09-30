# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Market < Vk::Schema::Namespace
      module Methods
        # Returns community's collections list.
        class GetAlbums < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'market.getAlbums'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of an items owner community.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of results.
          #   @option arguments [Integer] :count Number of items to return.
          #   @return [Market::Methods::GetAlbums]

          # @!group Arguments

          # @return [Integer] ID of an items owner community.
          attribute :owner_id, API::Types::Coercible::Int
          # @return [Integer] Offset needed to return a specific subset of results.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of items to return.
          attribute :count, API::Types::Coercible::Int.optional.default(50)
        end
      end
    end
  end
end
