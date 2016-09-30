# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Notes < Vk::Schema::Namespace
      module Methods
        # Returns a note by its ID.
        class GetById < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'notes.getById'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :note_id Note ID.
          #   @option arguments [Integer] :owner_id Note owner ID.
          #   @return [Notes::Methods::GetById]

          # @!group Arguments

          # @return [Integer] Note ID.
          attribute :note_id, API::Types::Coercible::Int
          # @return [Integer] Note owner ID.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
