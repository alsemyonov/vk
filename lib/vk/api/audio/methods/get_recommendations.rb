# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Audio < Vk::Schema::Namespace
      module Methods
        # Returns a list of suggested audio files based on a user's playlist or a particular audio file.
        class GetRecommendations < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'audio.getRecommendations'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :target_audio Use to get recommendations based on a particular audio file. The ID of the user or community that owns an audio file and that audio file's ID, separated by an underscore.;
          #   @option arguments [Integer] :user_id Use to get recommendations based on a user's playlist. User ID. By default, the current user ID.;
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of audio files.
          #   @option arguments [Integer] :count Number of audio files to return.
          #   @option arguments [Boolean] :shuffle '1' — shuffle on
          #   @return [Audio::Methods::GetRecommendations]

          # @!group Arguments

          # @return [String] Use to get recommendations based on a particular audio file. The ID of the user or community that owns an audio file and that audio file's ID, separated by an underscore.;
          attribute :target_audio, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] Use to get recommendations based on a user's playlist. User ID. By default, the current user ID.;
          attribute :user_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of audio files.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of audio files to return.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] '1' — shuffle on
          attribute :shuffle, API::Types::Bool.optional.default(nil)
        end
      end
    end
  end
end
