# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Orders
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Order < Vk::Schema::Model
          # @return [Integer] Order ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [Integer] App order ID
          attribute :app_order_id, Schema::Types::Coercible::Int.optional
          # @return [String] Order status
          attribute :status, Schema::Types::Coercible::String.optional
          # @return [Integer] User ID
          attribute :user_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Receiver ID
          attribute :receiver_id, Schema::Types::Coercible::Int.optional
          # @return [String] Order item
          attribute :item, Schema::Types::Coercible::String.optional
          # @return [Integer] Amount
          attribute :amount, Schema::Types::Coercible::Int.optional
          # @return [Integer] Date of creation in Unixtime
          attribute :date, Schema::Types::Coercible::Int.optional
          # @return [Integer] Transaction ID
          attribute :transaction_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Cancel transaction ID
          attribute :cancel_transaction_id, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
