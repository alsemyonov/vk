# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Orders < Vk::Schema::Namespace
      module Methods
        # Returns information about orders by their IDs.
        class GetById < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'orders.getById'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :order_id order ID.
          #   @option arguments [Array] :order_ids order IDs (when information about several orders is requested).
          #   @option arguments [Boolean] :test_mode if this parameter is set to 1, this method returns a list of test mode orders. By default — 0.
          #   @return [Orders::Methods::GetById]

          # @!group Arguments

          # @return [Integer] order ID.
          attribute :order_id, API::Types::Coercible::Int.optional
          # @return [Array] order IDs (when information about several orders is requested).
          attribute :order_ids, API::Types::Coercible::Array.optional
          # @return [Boolean] if this parameter is set to 1, this method returns a list of test mode orders. By default — 0.
          attribute :test_mode, API::Types::Bool.optional
        end
      end
    end
  end
end
