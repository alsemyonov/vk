# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Methods
        # Restores a previously deleted video.
        class Restore < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'video.restore'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :video_id Video ID.
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the video.
          #   @return [Video::Methods::Restore]

          # @!group Arguments

          # @return [Integer] Video ID.
          attribute :video_id, API::Types::Coercible::Int.optional
          # @return [Integer] ID of the user or community that owns the video.
          attribute :owner_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
