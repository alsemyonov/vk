# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Audio < Vk::Schema::Namespace
      module Methods
        # Returns information about audio files by their IDs.
        class GetById < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'audio.getById'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :audios Audio file IDs, in the following format:; "\$1owner_id\$1_\$1audio_id\$1"
          #   @return [Audio::Methods::GetById]

          # @!group Arguments

          # @return [Array] Audio file IDs, in the following format:; "\$1owner_id\$1_\$1audio_id\$1"
          attribute :audios, API::Types::Coercible::Array
        end
      end
    end
  end
end
