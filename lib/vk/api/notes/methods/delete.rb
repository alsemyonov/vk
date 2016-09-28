# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Notes < Vk::Schema::Namespace
      module Methods
        # Deletes a note of the current user.
        class Delete < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'notes.delete'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :note_id Note ID.
          #   @return [Notes::Methods::Delete]

          # @!group Arguments

          # @return [Integer] Note ID.
          attribute :note_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
