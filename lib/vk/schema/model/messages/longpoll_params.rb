# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Messages
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class LongpollParams < Vk::Schema::Model
          # @return [String] Key
          attribute :key, Schema::Types::Coercible::String.optional
          # @return [String] Server URL
          attribute :server, Schema::Types::Coercible::String.optional
          # @return [Integer] Timestamp
          attribute :ts, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
