# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class PushSettings < Vk::Schema::Object
        # @return [API::Base::BoolInt] Information whether notifications are disabled
        attribute :disabled, API::Base::BoolInt.optional.default(nil)
        # @return [Integer] Time until that notifications are disabled in Unixtime
        attribute :disabled_until, API::Types::Coercible::Int.optional.default(nil)
        # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :conversations, API::Types::Coercible::Hash.optional.default(nil)
        # @return [API::Account::PushParams] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :settings, Dry::Types[API::Account::PushParams].optional.default(nil)
      end
    end
  end
end
