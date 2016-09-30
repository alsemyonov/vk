# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Deletes a photo album belonging to the current user.
        class DeleteAlbum < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.deleteAlbum'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :album_id Album ID.
          #   @option arguments [Integer] :group_id ID of the community that owns the album.
          #   @return [Photos::Methods::DeleteAlbum]

          # @!group Arguments

          # @return [Integer] Album ID.
          attribute :album_id, API::Types::Coercible::Int
          # @return [Integer] ID of the community that owns the album.
          attribute :group_id, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
