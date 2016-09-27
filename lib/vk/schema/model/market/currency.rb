# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Market
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Currency < Vk::Schema::Model
          # @return [Integer] Currency ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [String] Currency sign
          attribute :name, Schema::Types::Coercible::String
        end
      end
    end
  end
end
