# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Ads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class DemoStats < Vk::Schema::Model
          # @return [Integer] Object ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [AdsObjectType] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :type, Schema::Types::AdsObjectType.optional
          # @return [DemostatsFormat] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :stats, Dry::Types[Model::Ads::DemostatsFormat].optional
        end
      end
    end
  end
end
