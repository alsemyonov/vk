# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Gifts < Vk::Schema::Namespace
      module Methods
        # Returns a list of user gifts.
        class Get < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'gifts.get'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id User ID.
          #   @option arguments [Integer] :count Number of gifts to return.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of results.
          #   @return [Gifts::Methods::Get]

          # @!group Arguments

          # @return [Integer] User ID.
          attribute :user_id, API::Types::Coercible::Int.optional
          # @return [Integer] Number of gifts to return.
          attribute :count, API::Types::Coercible::Int.optional
          # @return [Integer] Offset needed to return a specific subset of results.
          attribute :offset, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
