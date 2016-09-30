# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Notes < Vk::Schema::Namespace
      module Methods
        # Edits a comment on a note.
        class EditComment < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'notes.editComment'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :comment_id Comment ID.
          #   @option arguments [Integer] :owner_id Note owner ID.
          #   @option arguments [String] :message New comment text.
          #   @return [Notes::Methods::EditComment]

          # @!group Arguments

          # @return [Integer] Comment ID.
          attribute :comment_id, API::Types::Coercible::Int
          # @return [Integer] Note owner ID.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] New comment text.
          attribute :message, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
