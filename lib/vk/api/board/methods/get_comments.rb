# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Board < Vk::Schema::Namespace
      module Methods
        # Returns a list of comments on a topic on a community's discussion board.
        class GetComments < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'board.getComments'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id ID of the community that owns the discussion board.
          #   @option arguments [Integer] :topic_id Topic ID.
          #   @option arguments [Boolean] :need_likes '1' — to return the 'likes' field; '0'  — not to return the 'likes' field (default)
          #   @option arguments [Integer] :start_comment_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of comments.
          #   @option arguments [Integer] :count Number of comments to return.
          #   @option arguments [Boolean] :extended '1' — to return information about users who posted comments; '0' — to return no additional fields (default)
          #   @option arguments [String] :sort Sort order:; 'asc' — by creation date in chronological order; 'desc' — by creation date in reverse chronological order;
          #   @return [Board::Methods::GetComments]

          # @!group Arguments

          # @return [Integer] ID of the community that owns the discussion board.
          attribute :group_id, API::Types::Coercible::Int
          # @return [Integer] Topic ID.
          attribute :topic_id, API::Types::Coercible::Int
          # @return [Boolean] '1' — to return the 'likes' field; '0'  — not to return the 'likes' field (default)
          attribute :need_likes, API::Types::Form::Bool.optional.default(nil)
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :start_comment_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of comments.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of comments to return.
          attribute :count, API::Types::Coercible::Int.optional.default(20)
          # @return [Boolean] '1' — to return information about users who posted comments; '0' — to return no additional fields (default)
          attribute :extended, API::Types::Form::Bool.optional.default(nil)
          # @return [String] Sort order:; 'asc' — by creation date in chronological order; 'desc' — by creation date in reverse chronological order;
          attribute :sort, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
