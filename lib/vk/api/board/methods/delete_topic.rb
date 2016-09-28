# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Board < Vk::Schema::Namespace
      module Methods
        # Deletes a topic from a community's discussion board.
        class DeleteTopic < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'board.deleteTopic'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id ID of the community that owns the discussion board.
          #   @option arguments [Integer] :topic_id Topic ID.
          #   @return [Board::Methods::DeleteTopic]

          # @!group Arguments

          # @return [Integer] ID of the community that owns the discussion board.
          attribute :group_id, API::Types::Coercible::Int.optional
          # @return [Integer] Topic ID.
          attribute :topic_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
