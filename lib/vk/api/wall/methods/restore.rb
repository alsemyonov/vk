# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      module Methods
        # Restores a post deleted from a user wall or community wall.
        class Restore < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'wall.restore'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id User ID or community ID from whose wall the post was deleted. Use a negative value to designate a community ID.
          #   @option arguments [Integer] :post_id ID of the post to be restored.
          #   @return [Wall::Methods::Restore]

          # @!group Arguments

          # @return [Integer] User ID or community ID from whose wall the post was deleted. Use a negative value to designate a community ID.
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [Integer] ID of the post to be restored.
          attribute :post_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
