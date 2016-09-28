# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Board < Vk::Schema::Namespace
      module Methods
        # Adds a comment on a topic on a community's discussion board.
        class CreateComment < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'board.createComment'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id ID of the community that owns the discussion board.
          #   @option arguments [Integer] :topic_id ID of the topic to be commented on.
          #   @option arguments [String] :message (Required if 'attachments' is not set.) Text of the comment.
          #   @option arguments [Array] :attachments (Required if 'text' is not set.) List of media objects attached to the comment, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media object:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; '<owner_id>' — ID of the media owner. ; '<media_id>' — Media ID.
          #   @option arguments [Boolean] :from_group '1' — to post the comment as by the community; '0' — to post the comment as by the user (default)
          #   @option arguments [Integer] :sticker_id Sticker ID.
          #   @option arguments [String] :guid Unique identifier to avoid repeated comments.
          #   @return [Board::Methods::CreateComment]

          # @!group Arguments

          # @return [Integer] ID of the community that owns the discussion board.
          attribute :group_id, API::Types::Coercible::Int.optional
          # @return [Integer] ID of the topic to be commented on.
          attribute :topic_id, API::Types::Coercible::Int.optional
          # @return [String] (Required if 'attachments' is not set.) Text of the comment.
          attribute :message, API::Types::Coercible::String.optional
          # @return [Array] (Required if 'text' is not set.) List of media objects attached to the comment, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media object:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; '<owner_id>' — ID of the media owner. ; '<media_id>' — Media ID.
          attribute :attachments, API::Types::Coercible::Array.optional
          # @return [Boolean] '1' — to post the comment as by the community; '0' — to post the comment as by the user (default)
          attribute :from_group, API::Types::Bool.optional
          # @return [Integer] Sticker ID.
          attribute :sticker_id, API::Types::Coercible::Int.optional
          # @return [String] Unique identifier to avoid repeated comments.
          attribute :guid, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
