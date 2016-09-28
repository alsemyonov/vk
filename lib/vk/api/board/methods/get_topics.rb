# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Board < Vk::Schema::Namespace
      module Methods
        # Returns a list of topics on a community's discussion board.
        class GetTopics < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'board.getTopics'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id ID of the community that owns the discussion board.
          #   @option arguments [Array] :topic_ids IDs of topics to be returned (100 maximum). By default, all topics are returned.; ; If this parameter is set, the 'order', 'offset', and 'count' parameters are ignored.
          #   @option arguments [Integer] :order Sort order:; '1' — by date updated in reverse chronological order.; '2' — by date created in reverse chronological order.; '-1' — by date updated in chronological order.; '-2' — by date created in chronological order.; ; If no sort order is specified, topics are returned in the order specified by the group administrator. Pinned topics are returned first, regardless of the sorting.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of topics.
          #   @option arguments [Integer] :count Number of topics to return.
          #   @option arguments [Boolean] :extended '1' — to return information about users who created topics or who posted there last; '0' — to return no additional fields (default)
          #   @option arguments [Integer] :preview '1' — to return the first comment in each topic;; '2' — to return the last comment in each topic;; '0' — to return no comments.; ; By default: '0'.
          #   @option arguments [Integer] :preview_length Number of characters after which to truncate the previewed comment. To preview the full comment, specify '0'.
          #   @return [Board::Methods::GetTopics]

          # @!group Arguments

          # @return [Integer] ID of the community that owns the discussion board.
          attribute :group_id, API::Types::Coercible::Int.optional
          # @return [Array] IDs of topics to be returned (100 maximum). By default, all topics are returned.; ; If this parameter is set, the 'order', 'offset', and 'count' parameters are ignored.
          attribute :topic_ids, API::Types::Coercible::Array.optional
          # @return [Integer] Sort order:; '1' — by date updated in reverse chronological order.; '2' — by date created in reverse chronological order.; '-1' — by date updated in chronological order.; '-2' — by date created in chronological order.; ; If no sort order is specified, topics are returned in the order specified by the group administrator. Pinned topics are returned first, regardless of the sorting.
          attribute :order, API::Types::Coercible::Int.optional
          # @return [Integer] Offset needed to return a specific subset of topics.
          attribute :offset, API::Types::Coercible::Int.optional
          # @return [Integer] Number of topics to return.
          attribute :count, API::Types::Coercible::Int.optional
          # @return [Boolean] '1' — to return information about users who created topics or who posted there last; '0' — to return no additional fields (default)
          attribute :extended, API::Types::Bool.optional
          # @return [Integer] '1' — to return the first comment in each topic;; '2' — to return the last comment in each topic;; '0' — to return no comments.; ; By default: '0'.
          attribute :preview, API::Types::Coercible::Int.optional
          # @return [Integer] Number of characters after which to truncate the previewed comment. To preview the full comment, specify '0'.
          attribute :preview_length, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
