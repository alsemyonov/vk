# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      module Methods
        # Adds a comment to a post on a user wall or community wall.
        class CreateComment < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'wall.createComment'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id User ID or community ID. Use a negative value to designate a community ID.
          #   @option arguments [Integer] :post_id Post ID.
          #   @option arguments [Boolean] :from_group '1' — to post the comment as from the community;; '0' — (default) to post the comment as from the user.
          #   @option arguments [String] :message (Required if 'attachments' is not set.) Text of the comment.
          #   @option arguments [Integer] :reply_to_comment ID of comment to reply.
          #   @option arguments [Array] :attachments (Required if 'message' is not set.) List of media objects attached to the comment, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media ojbect:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; '<owner_id>' — ID of the media owner.; '<media_id>' — Media ID. ; ; For example:; "photo100172_166443618,photo66748_265827614"
          #   @option arguments [Integer] :sticker_id Sticker ID.
          #   @option arguments [String] :guid Unique identifier to avoid repeated comments.
          #   @return [Wall::Methods::CreateComment]

          # @!group Arguments

          # @return [Integer] User ID or community ID. Use a negative value to designate a community ID.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Post ID.
          attribute :post_id, API::Types::Coercible::Int
          # @return [Boolean] '1' — to post the comment as from the community;; '0' — (default) to post the comment as from the user.
          attribute :from_group, API::Types::Bool.optional.default(nil)
          # @return [String] (Required if 'attachments' is not set.) Text of the comment.
          attribute :message, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] ID of comment to reply.
          attribute :reply_to_comment, API::Types::Coercible::Int.optional.default(nil)
          # @return [Array] (Required if 'message' is not set.) List of media objects attached to the comment, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media ojbect:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; '<owner_id>' — ID of the media owner.; '<media_id>' — Media ID. ; ; For example:; "photo100172_166443618,photo66748_265827614"
          attribute :attachments, API::Types::Coercible::Array.optional.default(nil)
          # @return [Integer] Sticker ID.
          attribute :sticker_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] Unique identifier to avoid repeated comments.
          attribute :guid, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
