# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class AccountCounters < Vk::Schema::Object
        # @return [Integer] New friends requests number
        attribute :friends, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] New messages number
        attribute :messages, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] New photo tags number
        attribute :photos, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] New video tags number
        attribute :videos, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] New gifts number
        attribute :gifts, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] New events number
        attribute :events, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] New groups number
        attribute :groups, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] New notifications number
        attribute :notifications, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] New app_requests number
        attribute :app_requests, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
