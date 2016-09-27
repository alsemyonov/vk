# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Orders
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Amount < Vk::Schema::Model
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :amounts, Schema::Types::Coercible::Array.optional
        end
      end
    end
  end
end
