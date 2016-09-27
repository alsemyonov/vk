# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Account
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class AccountCounters < Vk::Schema::Model
          # @return [Integer] New friends requests number
          attribute :friends, Schema::Types::Coercible::Int.optional
          # @return [Integer] New messages number
          attribute :messages, Schema::Types::Coercible::Int.optional
          # @return [Integer] New photo tags number
          attribute :photos, Schema::Types::Coercible::Int.optional
          # @return [Integer] New video tags number
          attribute :videos, Schema::Types::Coercible::Int.optional
          # @return [Integer] New gifts number
          attribute :gifts, Schema::Types::Coercible::Int.optional
          # @return [Integer] New events number
          attribute :events, Schema::Types::Coercible::Int.optional
          # @return [Integer] New groups number
          attribute :groups, Schema::Types::Coercible::Int.optional
          # @return [Integer] New notifications number
          attribute :notifications, Schema::Types::Coercible::Int.optional
          # @return [Integer] New app_requests number
          attribute :app_requests, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
