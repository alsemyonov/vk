# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Market < Vk::Schema::Namespace
      module Methods
        # Edits a collection of items
        class EditAlbum < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'market.editAlbum'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of an collection owner community.
          #   @option arguments [Integer] :album_id Collection ID.
          #   @option arguments [String] :title Collection title.
          #   @option arguments [Integer] :photo_id Cover photo id
          #   @option arguments [Boolean] :main_album Set as main ('1' – set, '0' – no).
          #   @return [Market::Methods::EditAlbum]

          # @!group Arguments

          # @return [Integer] ID of an collection owner community.
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [Integer] Collection ID.
          attribute :album_id, API::Types::Coercible::Int.optional
          # @return [String] Collection title.
          attribute :title, API::Types::Coercible::String.optional
          # @return [Integer] Cover photo id
          attribute :photo_id, API::Types::Coercible::Int.optional
          # @return [Boolean] Set as main ('1' – set, '0' – no).
          attribute :main_album, API::Types::Bool.optional
        end
      end
    end
  end
end
