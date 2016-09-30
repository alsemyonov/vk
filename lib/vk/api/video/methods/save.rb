# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Methods
        # Returns a server address (required for upload) and video data.
        class Save < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'video.save'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :name Name of the video.
          #   @option arguments [String] :description Description of the video.
          #   @option arguments [Boolean] :is_private '1' — to designate the video as private (send it via a private message); the video will not appear on the user's video list and will not be available by ID for other users; '0' — not to designate the video as private
          #   @option arguments [Boolean] :wallpost '1' — to post the saved video on a user's wall; '0' — not to post the saved video on a user's wall
          #   @option arguments [String] :link URL for embedding the video from an external website.
          #   @option arguments [Integer] :group_id ID of the community in which the video will be saved. By default, the current user's page.
          #   @option arguments [Integer] :album_id ID of the album to which the saved video will be added.
          #   @option arguments [Array] :privacy_view @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Array] :privacy_comment @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Boolean] :no_comments @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Boolean] :repeat '1' — to repeat the playback of the video; '0' — to play the video once;
          #   @return [Video::Methods::Save]

          # @!group Arguments

          # @return [String] Name of the video.
          attribute :name, API::Types::Coercible::String.optional.default(nil)
          # @return [String] Description of the video.
          attribute :description, API::Types::Coercible::String.optional.default(nil)
          # @return [Boolean] '1' — to designate the video as private (send it via a private message); the video will not appear on the user's video list and will not be available by ID for other users; '0' — not to designate the video as private
          attribute :is_private, API::Types::Bool.optional.default(nil)
          # @return [Boolean] '1' — to post the saved video on a user's wall; '0' — not to post the saved video on a user's wall
          attribute :wallpost, API::Types::Bool.optional.default(nil)
          # @return [String] URL for embedding the video from an external website.
          attribute :link, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] ID of the community in which the video will be saved. By default, the current user's page.
          attribute :group_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] ID of the album to which the saved video will be added.
          attribute :album_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :privacy_view, API::Types::Coercible::Array.optional.default(nil)
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :privacy_comment, API::Types::Coercible::Array.optional.default(nil)
          # @return [Boolean] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :no_comments, API::Types::Bool.optional.default(nil)
          # @return [Boolean] '1' — to repeat the playback of the video; '0' — to play the video once;
          attribute :repeat, API::Types::Bool.optional.default(nil)
        end
      end
    end
  end
end
