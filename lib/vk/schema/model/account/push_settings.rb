# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Account
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class PushSettings < Vk::Schema::Model
          # @return [BaseBoolInt] Information whether notifications are disabled
          attribute :disabled, Schema::Types::BaseBoolInt.optional
          # @return [Integer] Time until that notifications are disabled in Unixtime
          attribute :disabled_until, Schema::Types::Coercible::Int.optional
          # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :conversations, Schema::Types::Coercible::Hash.optional
          # @return [PushParams] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :settings, Dry::Types[Model::Account::PushParams].optional
        end
      end
    end
  end
end
