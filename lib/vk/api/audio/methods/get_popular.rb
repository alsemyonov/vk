# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Audio < Vk::Schema::Namespace
      module Methods
        # Returns a list of audio files from the "Popular".
        class GetPopular < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'audio.getPopular'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Boolean] :only_eng '1' — to return only foreign audio files; '0' — to return all audio files;
          #   @option arguments [Integer] :genre_id Genre ID. See .
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of audio files.
          #   @option arguments [Integer] :count Number of audio files to return.
          #   @return [Audio::Methods::GetPopular]

          # @!group Arguments

          # @return [Boolean] '1' — to return only foreign audio files; '0' — to return all audio files;
          attribute :only_eng, API::Types::Bool.optional.default(nil)
          # @return [Integer] Genre ID. See .
          attribute :genre_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of audio files.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of audio files to return.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
