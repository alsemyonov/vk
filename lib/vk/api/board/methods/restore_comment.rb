# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Board < Vk::Schema::Namespace
      module Methods
        # Restores a comment deleted from a topic on a community's discussion board.
        class RestoreComment < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'board.restoreComment'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id ID of the community that owns the discussion board.
          #   @option arguments [Integer] :topic_id Topic ID.
          #   @option arguments [Integer] :comment_id Comment ID.
          #   @return [Board::Methods::RestoreComment]

          # @!group Arguments

          # @return [Integer] ID of the community that owns the discussion board.
          attribute :group_id, API::Types::Coercible::Int.optional
          # @return [Integer] Topic ID.
          attribute :topic_id, API::Types::Coercible::Int.optional
          # @return [Integer] Comment ID.
          attribute :comment_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
