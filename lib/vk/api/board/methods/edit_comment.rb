# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Board < Vk::Schema::Namespace
      module Methods
        # Edits a comment on a topic on a community's discussion board.
        class EditComment < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'board.editComment'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id ID of the community that owns the discussion board.
          #   @option arguments [Integer] :topic_id Topic ID.
          #   @option arguments [Integer] :comment_id ID of the comment on the topic.
          #   @option arguments [String] :message (Required if 'attachments' is not set). New comment text.
          #   @option arguments [Array] :attachments (Required if 'message' is not set.) List of media objects attached to the comment, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media object:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; '<owner_id>' — ID of the media owner. ; '<media_id>' — Media ID.; ; Example:; "photo100172_166443618,photo66748_265827614"
          #   @return [Board::Methods::EditComment]

          # @!group Arguments

          # @return [Integer] ID of the community that owns the discussion board.
          attribute :group_id, API::Types::Coercible::Int
          # @return [Integer] Topic ID.
          attribute :topic_id, API::Types::Coercible::Int
          # @return [Integer] ID of the comment on the topic.
          attribute :comment_id, API::Types::Coercible::Int
          # @return [String] (Required if 'attachments' is not set). New comment text.
          attribute :message, API::Types::Coercible::String.optional.default(nil)
          # @return [Array] (Required if 'message' is not set.) List of media objects attached to the comment, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media object:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; '<owner_id>' — ID of the media owner. ; '<media_id>' — Media ID.; ; Example:; "photo100172_166443618,photo66748_265827614"
          attribute :attachments, API::Types::Coercible::Array.optional.default(nil)
        end
      end
    end
  end
end
