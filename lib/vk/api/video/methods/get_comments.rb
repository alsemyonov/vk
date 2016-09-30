# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Methods
        # Returns a list of comments on a video.
        class GetComments < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'video.getComments'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the video.
          #   @option arguments [Integer] :video_id Video ID.
          #   @option arguments [Boolean] :need_likes '1' — to return an additional 'likes' field
          #   @option arguments [Integer] :start_comment_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of comments.
          #   @option arguments [Integer] :count Number of comments to return.
          #   @option arguments [String] :sort Sort order:; 'asc' — oldest comment first; 'desc' — newest comment first
          #   @option arguments [Boolean] :extended @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Video::Methods::GetComments]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the video.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Video ID.
          attribute :video_id, API::Types::Coercible::Int
          # @return [Boolean] '1' — to return an additional 'likes' field
          attribute :need_likes, API::Types::Form::Bool.optional.default(nil)
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :start_comment_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of comments.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of comments to return.
          attribute :count, API::Types::Coercible::Int.optional.default(20)
          # @return [String] Sort order:; 'asc' — oldest comment first; 'desc' — newest comment first
          attribute :sort, API::Types::Coercible::String.optional.default(nil)
          # @return [Boolean] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :extended, API::Types::Form::Bool.optional.default(nil)
        end
      end
    end
  end
end
