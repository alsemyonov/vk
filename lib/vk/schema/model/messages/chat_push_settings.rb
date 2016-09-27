# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Messages
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class ChatPushSettings < Vk::Schema::Model
          # @return [BaseBoolInt] Information whether the sound is on
          attribute :sound, Schema::Types::BaseBoolInt.optional
          # @return [Integer] Time until that notifications are disabled
          attribute :disabled_until, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
