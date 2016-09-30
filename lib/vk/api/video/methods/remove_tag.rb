# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Methods
        # Removes a tag from a video.
        class RemoveTag < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'video.removeTag'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :tag_id Tag ID.
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the video.
          #   @option arguments [Integer] :video_id Video ID.
          #   @return [Video::Methods::RemoveTag]

          # @!group Arguments

          # @return [Integer] Tag ID.
          attribute :tag_id, API::Types::Coercible::Int
          # @return [Integer] ID of the user or community that owns the video.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Video ID.
          attribute :video_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
