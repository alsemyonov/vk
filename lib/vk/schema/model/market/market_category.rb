# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Market
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class MarketCategory < Vk::Schema::Model
          # @return [Integer] Category ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [String] Category name
          attribute :name, Schema::Types::Coercible::String
          # @return [Section] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :section, Dry::Types[Model::Market::Section]
        end
      end
    end
  end
end
