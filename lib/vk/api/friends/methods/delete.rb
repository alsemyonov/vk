# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Friends < Vk::Schema::Namespace
      module Methods
        # Declines a friend request or deletes a user from the current user's friend list.
        class Delete < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'friends.delete'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id ID of the user whose friend request is to be declined or who is to be deleted from the current user's friend list.
          #   @return [Friends::Methods::Delete]

          # @!group Arguments

          # @return [Integer] ID of the user whose friend request is to be declined or who is to be deleted from the current user's friend list.
          attribute :user_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
