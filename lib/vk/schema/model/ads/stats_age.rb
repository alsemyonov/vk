# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Ads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class StatsAge < Vk::Schema::Model
          # @return [Number] Impressions rate
          attribute :impressions_rate, Schema::Types::Coercible::Int.optional
          # @return [Number] Clicks rate
          attribute :clicks_rate, Schema::Types::Coercible::Int.optional
          # @return [String] Age interval
          attribute :value, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
