# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Audio < Vk::Schema::Namespace
      module Methods
        # Restores a  audio file.
        class Restore < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'audio.restore'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :audio_id Audio file ID.
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the audio file.
          #   @return [Audio::Methods::Restore]

          # @!group Arguments

          # @return [Integer] Audio file ID.
          attribute :audio_id, API::Types::Coercible::Int.optional
          # @return [Integer] ID of the user or community that owns the audio file.
          attribute :owner_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
