# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Methods
        # Reorders the album in the list of user video albums.
        class ReorderAlbums < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'video.reorderAlbums'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the albums..
          #   @option arguments [Integer] :album_id Album ID.
          #   @option arguments [Integer] :before ID of the album before which the album in question shall be placed.
          #   @option arguments [Integer] :after ID of the album after which the album in question shall be placed.
          #   @return [Video::Methods::ReorderAlbums]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the albums..
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Album ID.
          attribute :album_id, API::Types::Coercible::Int
          # @return [Integer] ID of the album before which the album in question shall be placed.
          attribute :before, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] ID of the album after which the album in question shall be placed.
          attribute :after, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
