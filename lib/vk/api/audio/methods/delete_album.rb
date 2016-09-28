# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Audio < Vk::Schema::Namespace
      module Methods
        # Deletes an audio album.
        class DeleteAlbum < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'audio.deleteAlbum'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id ID of the community where the album is located.;
          #   @option arguments [Integer] :album_id Album ID.
          #   @return [Audio::Methods::DeleteAlbum]

          # @!group Arguments

          # @return [Integer] ID of the community where the album is located.;
          attribute :group_id, API::Types::Coercible::Int.optional
          # @return [Integer] Album ID.
          attribute :album_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
