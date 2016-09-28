# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Audio < Vk::Schema::Namespace
      module Methods
        # Returns the total number of audio files on a user or community page.
        class GetCount < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'audio.getCount'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the audio files. By default, current user ID.
          #   @return [Audio::Methods::GetCount]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the audio files. By default, current user ID.
          attribute :owner_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
