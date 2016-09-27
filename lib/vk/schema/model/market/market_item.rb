# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Market
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class MarketItem < Vk::Schema::Model
          # @return [Integer] Item ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [Integer] Item owner's ID
          attribute :owner_id, Schema::Types::Coercible::Int
          # @return [String] Item title
          attribute :title, Schema::Types::Coercible::String
          # @return [String] Item description
          attribute :description, Schema::Types::Coercible::String
          # @return [Price] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :price, Dry::Types[Model::Market::Price]
          # @return [MarketCategory] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :category, Dry::Types[Model::Market::MarketCategory]
          # @return [Integer] Date when the item has been created in Unixtime
          attribute :date, Schema::Types::Coercible::Int
          # @return [String] URL of the preview image
          attribute :thumb_photo, Schema::Types::Coercible::String.optional
          # @return [Integer] Information whether the item is available
          attribute :availability, Schema::Types::Coercible::Int
        end
      end
    end
  end
end
