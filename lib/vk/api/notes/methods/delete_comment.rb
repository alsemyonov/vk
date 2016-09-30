# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Notes < Vk::Schema::Namespace
      module Methods
        # Deletes a comment on a note.
        class DeleteComment < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'notes.deleteComment'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :comment_id Comment ID.
          #   @option arguments [Integer] :owner_id Note owner ID.
          #   @return [Notes::Methods::DeleteComment]

          # @!group Arguments

          # @return [Integer] Comment ID.
          attribute :comment_id, API::Types::Coercible::Int
          # @return [Integer] Note owner ID.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
