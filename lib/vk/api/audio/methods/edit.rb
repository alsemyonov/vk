# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Audio < Vk::Schema::Namespace
      module Methods
        # Edits an audio file on a user or community page.;
        class Edit < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'audio.edit'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the audio file.
          #   @option arguments [Integer] :audio_id Audio file ID.
          #   @option arguments [String] :artist Name of the artist.
          #   @option arguments [String] :title Title of the audio file.
          #   @option arguments [String] :text Text of the lyrics of the audio file.
          #   @option arguments [Integer] :genre_id Genre of the audio file. See the list of .
          #   @option arguments [Boolean] :no_search '1' — audio file will not be available for search; '0' — audio file will be available for search (default)
          #   @return [Audio::Methods::Edit]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the audio file.
          attribute :owner_id, API::Types::Coercible::Int
          # @return [Integer] Audio file ID.
          attribute :audio_id, API::Types::Coercible::Int
          # @return [String] Name of the artist.
          attribute :artist, API::Types::Coercible::String.optional.default(nil)
          # @return [String] Title of the audio file.
          attribute :title, API::Types::Coercible::String.optional.default(nil)
          # @return [String] Text of the lyrics of the audio file.
          attribute :text, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] Genre of the audio file. See the list of .
          attribute :genre_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] '1' — audio file will not be available for search; '0' — audio file will be available for search (default)
          attribute :no_search, API::Types::Bool.optional.default(nil)
        end
      end
    end
  end
end
