# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class ChatPushSettings < Vk::Schema::Object
        # @return [API::Base::BoolInt] Information whether the sound is on
        attribute :sound, API::Base::BoolInt.optional.default(nil)
        # @return [Integer] Time until that notifications are disabled
        attribute :disabled_until, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
