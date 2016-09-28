# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Market < Vk::Schema::Namespace
      module Methods
        # Deletes an item's comment
        class DeleteComment < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'market.deleteComment'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id identifier of an item owner community; "Note that community id in the 'owner_id' parameter should be negative number. For example 'owner_id'=-1 matches the [vk.com/apiclub|VK API] community "
          #   @option arguments [Integer] :comment_id comment id
          #   @return [Market::Methods::DeleteComment]

          # @!group Arguments

          # @return [Integer] identifier of an item owner community; "Note that community id in the 'owner_id' parameter should be negative number. For example 'owner_id'=-1 matches the [vk.com/apiclub|VK API] community "
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [Integer] comment id
          attribute :comment_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
