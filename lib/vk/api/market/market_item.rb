# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Market < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class MarketItem < Vk::Schema::Object
        # @return [Integer] Item ID
        attribute :id, API::Types::Coercible::Int
        # @return [Integer] Item owner's ID
        attribute :owner_id, API::Types::Coercible::Int
        # @return [String] Item title
        attribute :title, API::Types::Coercible::String
        # @return [String] Item description
        attribute :description, API::Types::Coercible::String
        # @return [API::Market::Price] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :price, Dry::Types[API::Market::Price]
        # @return [API::Market::MarketCategory] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :category, Dry::Types[API::Market::MarketCategory]
        # @return [Integer] Date when the item has been created in Unixtime
        attribute :date, API::Types::Coercible::Int
        # @return [String] URL of the preview image
        attribute :thumb_photo, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Information whether the item is available
        attribute :availability, API::Types::Coercible::Int.enum(0, 1, 2)
      end
    end
  end
end
