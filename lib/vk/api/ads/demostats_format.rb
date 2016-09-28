# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class DemostatsFormat < Vk::Schema::Object
        # @return [String] Day as YYYY-MM-DD
        attribute :day, API::Types::Coercible::String.optional
        # @return [String] Month as YYYY-MM
        attribute :month, API::Types::Coercible::String.optional
        # @return [Integer] 1 if period=overall
        attribute :overall, API::Types::Coercible::Int.optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :sex, API::Types::Coercible::Array.member(API::Ads::StatsSex).optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :age, API::Types::Coercible::Array.member(API::Ads::StatsAge).optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :sex_age, API::Types::Coercible::Array.member(API::Ads::StatsSexAge).optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :cities, API::Types::Coercible::Array.member(API::Ads::StatsCities).optional
      end
    end
  end
end
