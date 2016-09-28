# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Board < Vk::Schema::Namespace
      module Methods
        # Edits the title of a topic on a community's discussion board.
        class EditTopic < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'board.editTopic'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id ID of the community that owns the discussion board.
          #   @option arguments [Integer] :topic_id Topic ID.
          #   @option arguments [String] :title New title of the topic.
          #   @return [Board::Methods::EditTopic]

          # @!group Arguments

          # @return [Integer] ID of the community that owns the discussion board.
          attribute :group_id, API::Types::Coercible::Int.optional
          # @return [Integer] Topic ID.
          attribute :topic_id, API::Types::Coercible::Int.optional
          # @return [String] New title of the topic.
          attribute :title, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
