# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Orders < Vk::Schema::Namespace
      module Methods
        # Returns a list of orders.
        class Get < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'orders.get'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :count number of returned orders.
          #   @option arguments [Boolean] :test_mode if this parameter is set to 1, this method returns a list of test mode orders. By default — 0.
          #   @return [Orders::Methods::Get]

          # @!group Arguments

          # @return [Integer] number of returned orders.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] if this parameter is set to 1, this method returns a list of test mode orders. By default — 0.
          attribute :test_mode, API::Types::Bool.optional.default(nil)
        end
      end
    end
  end
end
