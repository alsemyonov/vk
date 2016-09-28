# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Audio < Vk::Schema::Namespace
      module Methods
        # Deletes an audio file from a user page or community page.
        class Delete < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'audio.delete'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :audio_id Audio file ID.
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the audio file. Use a negative value to designate a community ID.
          #   @return [Audio::Methods::Delete]

          # @!group Arguments

          # @return [Integer] Audio file ID.
          attribute :audio_id, API::Types::Coercible::Int.optional
          # @return [Integer] ID of the user or community that owns the audio file. Use a negative value to designate a community ID.
          attribute :owner_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
