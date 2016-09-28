# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Audio < Vk::Schema::Namespace
      module Methods
        # Edits the title of an audio album.
        class EditAlbum < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'audio.editAlbum'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id ID of the community where the album is located.;
          #   @option arguments [Integer] :album_id Album ID.
          #   @option arguments [String] :title New album title.
          #   @return [Audio::Methods::EditAlbum]

          # @!group Arguments

          # @return [Integer] ID of the community where the album is located.;
          attribute :group_id, API::Types::Coercible::Int.optional
          # @return [Integer] Album ID.
          attribute :album_id, API::Types::Coercible::Int.optional
          # @return [String] New album title.
          attribute :title, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
