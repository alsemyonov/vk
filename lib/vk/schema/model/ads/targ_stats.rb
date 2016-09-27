# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Ads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class TargStats < Vk::Schema::Model
          # @return [Integer] Audience
          attribute :audience_count, Schema::Types::Coercible::Int
          # @return [Number] Recommended CPC value
          attribute :recommended_cpc, Schema::Types::Coercible::Int.optional
          # @return [Number] Recommended CPM value
          attribute :recommended_cpm, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
