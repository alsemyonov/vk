# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Market < Vk::Schema::Namespace
      module Methods
        # Returns a list of market categories.
        class GetCategories < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'market.getCategories'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :count Number of results to return.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of results.
          #   @return [Market::Methods::GetCategories]

          # @!group Arguments

          # @return [Integer] Number of results to return.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of results.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
