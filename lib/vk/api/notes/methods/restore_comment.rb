# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Notes < Vk::Schema::Namespace
      module Methods
        # Restores a deleted comment on a note.
        class RestoreComment < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'notes.restoreComment'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :comment_id Comment ID.
          #   @option arguments [Integer] :owner_id Note owner ID.
          #   @return [Notes::Methods::RestoreComment]

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
