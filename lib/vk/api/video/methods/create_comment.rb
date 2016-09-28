# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Methods
        # Adds a new comment on a video.
        class CreateComment < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'video.createComment'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the video.
          #   @option arguments [Integer] :video_id Video ID.
          #   @option arguments [String] :message New comment text.
          #   @option arguments [Array] :attachments List of objects attached to the comment, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media attachment:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; '<owner_id>' — ID of the media attachment owner.; '<media_id>' — Media attachment ID. ; ; Example:; "photo100172_166443618,photo66748_265827614"
          #   @option arguments [Boolean] :from_group '1' — to post the comment from a community name (only if 'owner_id'<0)
          #   @option arguments [Integer] :reply_to_comment 
          #   @option arguments [Integer] :sticker_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [String] :guid @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Video::Methods::CreateComment]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the video.
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [Integer] Video ID.
          attribute :video_id, API::Types::Coercible::Int.optional
          # @return [String] New comment text.
          attribute :message, API::Types::Coercible::String.optional
          # @return [Array] List of objects attached to the comment, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media attachment:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; '<owner_id>' — ID of the media attachment owner.; '<media_id>' — Media attachment ID. ; ; Example:; "photo100172_166443618,photo66748_265827614"
          attribute :attachments, API::Types::Coercible::Array.optional
          # @return [Boolean] '1' — to post the comment from a community name (only if 'owner_id'<0)
          attribute :from_group, API::Types::Bool.optional
          # @return [Integer] 
          attribute :reply_to_comment, API::Types::Coercible::Int.optional
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :sticker_id, API::Types::Coercible::Int.optional
          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :guid, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
