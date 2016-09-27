# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Groups
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class MarketInfo < Vk::Schema::Model
          # @return [BaseBoolInt] Information whether the market is enabled
          attribute :enabled, Schema::Types::BaseBoolInt.optional
          # @return [Integer] Minimum price
          attribute :price_min, Schema::Types::Coercible::Int.optional
          # @return [Integer] Maximum price
          attribute :price_max, Schema::Types::Coercible::Int.optional
          # @return [Integer] Main market album ID
          attribute :main_album_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Contact person ID
          attribute :contact_id, Schema::Types::Coercible::Int.optional
          # @return [Currency] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :currency, Dry::Types[Model::Market::Currency].optional
          # @return [String] Currency name
          attribute :currency_text, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
