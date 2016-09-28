# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class StatsCities < Vk::Schema::Object
        # @return [Number] Impressions rate
        attribute :impressions_rate, API::Types::Coercible::Int.optional
        # @return [Number] Clicks rate
        attribute :clicks_rate, API::Types::Coercible::Int.optional
        # @return [Integer] City ID
        attribute :value, API::Types::Coercible::Int.optional
        # @return [String] City name
        attribute :name, API::Types::Coercible::String.optional
      end
    end
  end
end
