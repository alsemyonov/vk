# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Base
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class RequestParam < Vk::Schema::Model
          # @return [String] Parameter name
          attribute :key, Schema::Types::Coercible::String.optional
          # @return [String] Parameter value
          attribute :value, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
