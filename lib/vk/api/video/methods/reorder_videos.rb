# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Methods
        # Reorders the video in the video album.
        class ReorderVideos < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'video.reorderVideos'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :target_id ID of the user or community that owns the album with videos.
          #   @option arguments [Integer] :album_id ID of the video album.
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the video.
          #   @option arguments [Integer] :video_id ID of the video.
          #   @option arguments [Integer] :before_owner_id ID of the user or community that owns the video before which the video in question shall be placed.
          #   @option arguments [Integer] :before_video_id ID of the video before which the video in question shall be placed.
          #   @option arguments [Integer] :after_owner_id ID of the user or community that owns the video after which the photo in question shall be placed.
          #   @option arguments [Integer] :after_video_id ID of the video after which the photo in question shall be placed.
          #   @return [Video::Methods::ReorderVideos]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the album with videos.
          attribute :target_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] ID of the video album.
          attribute :album_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] ID of the user or community that owns the video.
          attribute :owner_id, API::Types::Coercible::Int
          # @return [Integer] ID of the video.
          attribute :video_id, API::Types::Coercible::Int
          # @return [Integer] ID of the user or community that owns the video before which the video in question shall be placed.
          attribute :before_owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] ID of the video before which the video in question shall be placed.
          attribute :before_video_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] ID of the user or community that owns the video after which the photo in question shall be placed.
          attribute :after_owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] ID of the video after which the photo in question shall be placed.
          attribute :after_video_id, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
