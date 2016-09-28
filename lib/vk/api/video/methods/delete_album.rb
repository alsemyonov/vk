# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Methods
        # Deletes a video album.
        class DeleteAlbum < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'video.deleteAlbum'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID (if the album is owned by a community).
          #   @option arguments [Integer] :album_id Album ID.
          #   @return [Video::Methods::DeleteAlbum]

          # @!group Arguments

          # @return [Integer] Community ID (if the album is owned by a community).
          attribute :group_id, API::Types::Coercible::Int.optional
          # @return [Integer] Album ID.
          attribute :album_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
