# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Methods
        # Returns list of videos in which the user is tagged.
        class GetUserVideos < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'video.getUserVideos'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id User ID.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of videos.
          #   @option arguments [Integer] :count Number of videos to return.
          #   @return [Video::Methods::GetUserVideos]

          # @!group Arguments

          # @return [Integer] User ID.
          attribute :user_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of videos.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of videos to return.
          attribute :count, API::Types::Coercible::Int.optional.default(20)
        end
      end
    end
  end
end
