# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Audio < Vk::Schema::Namespace
      module Methods
        # Moves audio files to an album.
        class MoveToAlbum < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'audio.moveToAlbum'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id ID of the community where the audio files are located. By default, current user ID.;
          #   @option arguments [Integer] :album_id ID of the album to which the audio files will be moved.
          #   @option arguments [Array] :audio_ids IDs of the audio files to be moved.; "NOTE: An album can hold up to 1000 audio files.";
          #   @return [Audio::Methods::MoveToAlbum]

          # @!group Arguments

          # @return [Integer] ID of the community where the audio files are located. By default, current user ID.;
          attribute :group_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] ID of the album to which the audio files will be moved.
          attribute :album_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Array] IDs of the audio files to be moved.; "NOTE: An album can hold up to 1000 audio files.";
          attribute :audio_ids, API::Types::Coercible::Array
        end
      end
    end
  end
end
