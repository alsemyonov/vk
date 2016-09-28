# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Market < Vk::Schema::Namespace
      module Methods
        # Returns items list for a community.
        class Get < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'market.get'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of an item owner community; "Note that community id in the 'owner_id' parameter should be negative number. For example 'owner_id'=-1 matches the [vk.com/apiclub|VK API] community "
          #   @option arguments [Integer] :count Number of items to return.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of results.
          #   @option arguments [Boolean] :extended '1' – method will return additional fields: 'likes, can_comment, car_repost, photos'. These parameters are not returned by default.
          #   @return [Market::Methods::Get]

          # @!group Arguments

          # @return [Integer] ID of an item owner community; "Note that community id in the 'owner_id' parameter should be negative number. For example 'owner_id'=-1 matches the [vk.com/apiclub|VK API] community "
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [Integer] Number of items to return.
          attribute :count, API::Types::Coercible::Int.optional
          # @return [Integer] Offset needed to return a specific subset of results.
          attribute :offset, API::Types::Coercible::Int.optional
          # @return [Boolean] '1' – method will return additional fields: 'likes, can_comment, car_repost, photos'. These parameters are not returned by default.
          attribute :extended, API::Types::Bool.optional
        end
      end
    end
  end
end
