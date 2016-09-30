# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Methods
        # Edits the title of a video album.
        class EditAlbum < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'video.editAlbum'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID (if the album edited is owned by a community).
          #   @option arguments [Integer] :album_id Album ID.
          #   @option arguments [String] :title New album title.
          #   @option arguments [Array] :privacy new access permissions for the album.; Possible values: ; *'0' – all users;; *'1' – friends only;; *'2' – friends and friends of friends;; *'3' – "only me".
          #   @return [Video::Methods::EditAlbum]

          # @!group Arguments

          # @return [Integer] Community ID (if the album edited is owned by a community).
          attribute :group_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Album ID.
          attribute :album_id, API::Types::Coercible::Int
          # @return [String] New album title.
          attribute :title, API::Types::Coercible::String
          # @return [Array] new access permissions for the album.; Possible values: ; *'0' – all users;; *'1' – friends only;; *'2' – friends and friends of friends;; *'3' – "only me".
          attribute :privacy, API::Types::Coercible::Array.optional.default(nil)
        end
      end
    end
  end
end
