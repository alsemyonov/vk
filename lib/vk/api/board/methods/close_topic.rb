# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Board < Vk::Schema::Namespace
      module Methods
        # Closes a topic on a community's discussion board so that comments cannot be posted.
        class CloseTopic < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'board.closeTopic'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id ID of the community that owns the discussion board.
          #   @option arguments [Integer] :topic_id Topic ID.
          #   @return [Board::Methods::CloseTopic]

          # @!group Arguments

          # @return [Integer] ID of the community that owns the discussion board.
          attribute :group_id, API::Types::Coercible::Int
          # @return [Integer] Topic ID.
          attribute :topic_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
