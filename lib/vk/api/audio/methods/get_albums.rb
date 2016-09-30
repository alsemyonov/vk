# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Audio < Vk::Schema::Namespace
      module Methods
        # Returns a list of audio albums of a user or community.
        class GetAlbums < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'audio.getAlbums'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the audio file.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of albums.
          #   @option arguments [Integer] :count Number of albums to return.
          #   @return [Audio::Methods::GetAlbums]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the audio file.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of albums.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of albums to return.
          attribute :count, API::Types::Coercible::Int.optional.default(50)
        end
      end
    end
  end
end
