# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      module Methods
        # Returns information about reposts of a post on user wall or community wall.
        class GetReposts < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'wall.getReposts'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id User ID or community ID. By default, current user ID. Use a negative value to designate a community ID.
          #   @option arguments [Integer] :post_id Post ID.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of reposts.
          #   @option arguments [Integer] :count Number of reposts to return.
          #   @return [Wall::Methods::GetReposts]

          # @!group Arguments

          # @return [Integer] User ID or community ID. By default, current user ID. Use a negative value to designate a community ID.
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [Integer] Post ID.
          attribute :post_id, API::Types::Coercible::Int.optional
          # @return [Integer] Offset needed to return a specific subset of reposts.
          attribute :offset, API::Types::Coercible::Int.optional
          # @return [Integer] Number of reposts to return.
          attribute :count, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
