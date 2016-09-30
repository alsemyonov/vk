# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Audio < Vk::Schema::Namespace
      module Methods
        # Reorders an audio file, placing it between other specified audio files.
        class Reorder < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'audio.reorder'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :audio_id Audio file ID.
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the audio file.
          #   @option arguments [Integer] :before ID of the audio file before which to place the audio file.
          #   @option arguments [Integer] :after ID of the audio file after which to place the audio file.
          #   @return [Audio::Methods::Reorder]

          # @!group Arguments

          # @return [Integer] Audio file ID.
          attribute :audio_id, API::Types::Coercible::Int
          # @return [Integer] ID of the user or community that owns the audio file.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] ID of the audio file before which to place the audio file.
          attribute :before, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] ID of the audio file after which to place the audio file.
          attribute :after, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
