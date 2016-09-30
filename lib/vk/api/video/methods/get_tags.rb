# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Methods
        # Returns a list of tags on a video.
        class GetTags < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'video.getTags'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the video.
          #   @option arguments [Integer] :video_id Video ID.
          #   @return [Video::Methods::GetTags]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the video.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Video ID.
          attribute :video_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
