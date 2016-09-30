# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Friends < Vk::Schema::Namespace
      module Methods
        # Deletes a friend list of the current user.
        class DeleteList < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'friends.deleteList'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :list_id ID of the friend list to delete.
          #   @return [Friends::Methods::DeleteList]

          # @!group Arguments

          # @return [Integer] ID of the friend list to delete.
          attribute :list_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
