# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      module Methods
        # Unpins the post on wall.
        class Unpin < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'wall.unpin'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the wall. By default, current user ID. Use a negative value to designate a community ID.
          #   @option arguments [Integer] :post_id Post ID.
          #   @return [Wall::Methods::Unpin]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the wall. By default, current user ID. Use a negative value to designate a community ID.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Post ID.
          attribute :post_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
