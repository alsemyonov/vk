# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Ads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Stats < Vk::Schema::Model
          # @return [Integer] Object ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [AdsObjectType] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :type, Schema::Types::AdsObjectType.optional
          # @return [StatsFormat] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :stats, Dry::Types[Model::Ads::StatsFormat].optional
        end
      end
    end
  end
end
