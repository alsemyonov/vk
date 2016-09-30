# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Notes < Vk::Schema::Namespace
      module Methods
        # Returns a list of comments on a note.
        class GetComments < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'notes.getComments'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :note_id Note ID.
          #   @option arguments [Integer] :owner_id Note owner ID.
          #   @option arguments [Integer] :count Number of comments to return.
          #   @return [Notes::Methods::GetComments]

          # @!group Arguments

          # @return [Integer] Note ID.
          attribute :note_id, API::Types::Coercible::Int
          # @return [Integer] Note owner ID.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of comments to return.
          attribute :count, API::Types::Coercible::Int.optional.default(20)
        end
      end
    end
  end
end
