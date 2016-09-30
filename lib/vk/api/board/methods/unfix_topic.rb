# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Board < Vk::Schema::Namespace
      module Methods
        # Unpins a pinned topic from the top of a community's discussion board.
        class UnfixTopic < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'board.unfixTopic'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id ID of the community that owns the discussion board.
          #   @option arguments [Integer] :topic_id Topic ID.
          #   @return [Board::Methods::UnfixTopic]

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
