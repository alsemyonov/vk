# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Audio < Vk::Schema::Namespace
      module Methods
        # Returns lyrics associated with an audio file.
        class GetLyrics < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'audio.getLyrics'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :lyrics_id Lyrics ID (could be obtained with , , or  methods).
          #   @return [Audio::Methods::GetLyrics]

          # @!group Arguments

          # @return [Integer] Lyrics ID (could be obtained with , , or  methods).
          attribute :lyrics_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
