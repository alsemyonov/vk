# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Market < Vk::Schema::Namespace
      module Methods
        # Creates new collection of items
        class AddAlbum < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'market.addAlbum'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of an item owner community.
          #   @option arguments [String] :title Collection title.
          #   @option arguments [Integer] :photo_id Cover photo ID.
          #   @option arguments [Boolean] :main_album Set as main ('1' – set, '0' – no).
          #   @return [Market::Methods::AddAlbum]

          # @!group Arguments

          # @return [Integer] ID of an item owner community.
          attribute :owner_id, API::Types::Coercible::Int
          # @return [String] Collection title.
          attribute :title, API::Types::Coercible::String
          # @return [Integer] Cover photo ID.
          attribute :photo_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] Set as main ('1' – set, '0' – no).
          attribute :main_album, API::Types::Bool.optional.default(nil)
        end
      end
    end
  end
end
