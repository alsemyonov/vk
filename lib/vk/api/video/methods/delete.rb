# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Methods
        # Deletes a video from a user or community page.
        class Delete < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'video.delete'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :video_id Video ID.
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the video.
          #   @option arguments [Integer] :target_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Video::Methods::Delete]

          # @!group Arguments

          # @return [Integer] Video ID.
          attribute :video_id, API::Types::Coercible::Int.optional
          # @return [Integer] ID of the user or community that owns the video.
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :target_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
