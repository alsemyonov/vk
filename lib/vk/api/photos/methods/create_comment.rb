# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Adds a new comment on the photo.
        class CreateComment < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.createComment'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the photo.
          #   @option arguments [Integer] :photo_id Photo ID.
          #   @option arguments [String] :message Comment text.
          #   @option arguments [Array] :attachments (Required if 'message' is not set.) List of objects attached to the post, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media attachment:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; '<owner_id>' — Media attachment owner ID.; '<media_id>' — Media attachment ID.; ; Example:; "photo100172_166443618,photo66748_265827614"
          #   @option arguments [Boolean] :from_group '1' — to post a comment from the community
          #   @option arguments [Integer] :reply_to_comment 
          #   @option arguments [Integer] :sticker_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [String] :access_key @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [String] :guid @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Photos::Methods::CreateComment]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the photo.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Photo ID.
          attribute :photo_id, API::Types::Coercible::Int
          # @return [String] Comment text.
          attribute :message, API::Types::Coercible::String.optional.default(nil)
          # @return [Array] (Required if 'message' is not set.) List of objects attached to the post, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media attachment:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; '<owner_id>' — Media attachment owner ID.; '<media_id>' — Media attachment ID.; ; Example:; "photo100172_166443618,photo66748_265827614"
          attribute :attachments, API::Types::Coercible::Array.optional.default(nil)
          # @return [Boolean] '1' — to post a comment from the community
          attribute :from_group, API::Types::Bool.optional.default(nil)
          # @return [Integer] 
          attribute :reply_to_comment, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :sticker_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :access_key, API::Types::Coercible::String.optional.default(nil)
          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :guid, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
