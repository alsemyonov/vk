# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      module Methods
        # Deletes a comment on a post on a user wall or community wall.;
        class DeleteComment < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'wall.deleteComment'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id User ID or community ID. Use a negative value to designate a community ID.;
          #   @option arguments [Integer] :comment_id Comment ID.
          #   @return [Wall::Methods::DeleteComment]

          # @!group Arguments

          # @return [Integer] User ID or community ID. Use a negative value to designate a community ID.;
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Comment ID.
          attribute :comment_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
