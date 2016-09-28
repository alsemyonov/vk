# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class DemoStats < Vk::Schema::Object
        # @return [Integer] Object ID
        attribute :id, API::Types::Coercible::Int.optional
        # @return [API::Ads::ObjectType] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :type, API::Ads::ObjectType.optional
        # @return [API::Ads::DemostatsFormat] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :stats, Dry::Types[API::Ads::DemostatsFormat].optional
      end
    end
  end
end
