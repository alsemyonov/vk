# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class MarketInfo < Vk::Schema::Object
        # @return [API::Base::BoolInt] Information whether the market is enabled
        attribute :enabled, API::Base::BoolInt.optional
        # @return [Integer] Minimum price
        attribute :price_min, API::Types::Coercible::Int.optional
        # @return [Integer] Maximum price
        attribute :price_max, API::Types::Coercible::Int.optional
        # @return [Integer] Main market album ID
        attribute :main_album_id, API::Types::Coercible::Int.optional
        # @return [Integer] Contact person ID
        attribute :contact_id, API::Types::Coercible::Int.optional
        # @return [API::Market::Currency] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :currency, Dry::Types[API::Market::Currency].optional
        # @return [String] Currency name
        attribute :currency_text, API::Types::Coercible::String.optional
      end
    end
  end
end
