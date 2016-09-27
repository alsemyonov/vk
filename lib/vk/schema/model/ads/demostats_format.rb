# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Ads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class DemostatsFormat < Vk::Schema::Model
          # @return [String] Day as YYYY-MM-DD
          attribute :day, Schema::Types::Coercible::String.optional
          # @return [String] Month as YYYY-MM
          attribute :month, Schema::Types::Coercible::String.optional
          # @return [Integer] 1 if period=overall
          attribute :overall, Schema::Types::Coercible::Int.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :sex, Schema::Types::Coercible::Array.member(Model::Ads::StatsSex).optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :age, Schema::Types::Coercible::Array.member(Model::Ads::StatsAge).optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :sex_age, Schema::Types::Coercible::Array.member(Model::Ads::StatsSexAge).optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :cities, Schema::Types::Coercible::Array.member(Model::Ads::StatsCities).optional
        end
      end
    end
  end
end
