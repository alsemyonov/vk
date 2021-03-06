# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Orders < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Order < Vk::Schema::Object
        # @return [Integer] Order ID
        attribute :id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] App order ID
        attribute :app_order_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Order status
        attribute :status, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] User ID
        attribute :user_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Receiver ID
        attribute :receiver_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Order item
        attribute :item, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Amount
        attribute :amount, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Date of creation in Unixtime
        attribute :date, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Transaction ID
        attribute :transaction_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Cancel transaction ID
        attribute :cancel_transaction_id, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
