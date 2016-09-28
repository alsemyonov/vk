# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Audio < Vk::Schema::Namespace
      module Methods
        # Returns a list of audio files of a user or community.
        class Get < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'audio.get'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the audio file. Use a negative value to designate a community ID.
          #   @option arguments [Integer] :album_id Audio album ID.
          #   @option arguments [Array] :audio_ids IDs of the audio files to return.
          #   @option arguments [Boolean] :need_user '1' — to return information about users who uploaded audio files
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of audio files.
          #   @option arguments [Integer] :count Number of audio files to return.
          #   @return [Audio::Methods::Get]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the audio file. Use a negative value to designate a community ID.
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [Integer] Audio album ID.
          attribute :album_id, API::Types::Coercible::Int.optional
          # @return [Array] IDs of the audio files to return.
          attribute :audio_ids, API::Types::Coercible::Array.optional
          # @return [Boolean] '1' — to return information about users who uploaded audio files
          attribute :need_user, API::Types::Bool.optional
          # @return [Integer] Offset needed to return a specific subset of audio files.
          attribute :offset, API::Types::Coercible::Int.optional
          # @return [Integer] Number of audio files to return.
          attribute :count, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
