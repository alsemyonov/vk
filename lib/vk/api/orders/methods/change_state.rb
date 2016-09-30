# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Orders < Vk::Schema::Namespace
      module Methods
        # Changes order status.
        class ChangeState < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'orders.changeState'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :order_id order ID.
          #   @option arguments [String] :action action to be done with the order. ; ; Available actions:; *cancel — to cancel unconfirmed order.; *charge — to confirm unconfirmed order. Applies only if processing of  notification failed.; *refund — to cancel confirmed order.;
          #   @option arguments [Integer] :app_order_id internal ID of the order in the application.
          #   @option arguments [Boolean] :test_mode if this parameter is set to 1, this method returns a list of test mode orders. By default — 0.
          #   @return [Orders::Methods::ChangeState]

          # @!group Arguments

          # @return [Integer] order ID.
          attribute :order_id, API::Types::Coercible::Int
          # @return [String] action to be done with the order. ; ; Available actions:; *cancel — to cancel unconfirmed order.; *charge — to confirm unconfirmed order. Applies only if processing of  notification failed.; *refund — to cancel confirmed order.;
          attribute :action, API::Types::Coercible::String
          # @return [Integer] internal ID of the order in the application.
          attribute :app_order_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] if this parameter is set to 1, this method returns a list of test mode orders. By default — 0.
          attribute :test_mode, API::Types::Bool.optional.default(nil)
        end
      end
    end
  end
end
