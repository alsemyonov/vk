# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      module Methods
        # Deletes a post from a user wall or community wall.
        class Delete < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'wall.delete'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id User ID or community ID. Use a negative value to designate a community ID.
          #   @option arguments [Integer] :post_id ID of the post to be deleted.
          #   @return [Wall::Methods::Delete]

          # @!group Arguments

          # @return [Integer] User ID or community ID. Use a negative value to designate a community ID.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] ID of the post to be deleted.
          attribute :post_id, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
