# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # Removes a user from the community.
        class RemoveUser < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'groups.removeUser'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID.
          #   @option arguments [Integer] :user_id User ID.
          #   @return [Groups::Methods::RemoveUser]

          # @!group Arguments

          # @return [Integer] Community ID.
          attribute :group_id, API::Types::Coercible::Int.optional
          # @return [Integer] User ID.
          attribute :user_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
