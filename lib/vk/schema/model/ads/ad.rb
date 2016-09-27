# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Ads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Ad < Vk::Schema::Model
          # @return [Integer] Ad ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [Integer] Campaign ID
          attribute :campaign_id, Schema::Types::Coercible::Int
          # @return [Integer] Ad format
          attribute :ad_format, Schema::Types::Coercible::Int
          # @return [Integer] Cost type
          attribute :cost_type, Schema::Types::Coercible::Int
          # @return [Integer] Cost of a click, kopecks
          attribute :cpc, Schema::Types::Coercible::Int.optional
          # @return [Integer] Cost of 1000 impressions, kopecks
          attribute :cpm, Schema::Types::Coercible::Int.optional
          # @return [Integer] Impressions limit
          attribute :impressions_limit, Schema::Types::Coercible::Int.optional
          # @return [Integer] Information whether impressions are limited
          attribute :impressions_limited, Schema::Types::Coercible::Int.optional
          # @return [Integer, String] Ad platform
          attribute :ad_platform, Schema::Types::Coercible::Int | Schema::Types::Coercible::String.optional
          # @return [Integer] Total limit
          attribute :all_limit, Schema::Types::Coercible::Int
          # @return [Integer] Category ID
          attribute :category1_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Additional category ID
          attribute :category2_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Ad atatus
          attribute :status, Schema::Types::Coercible::Int
          # @return [String] Ad title
          attribute :name, Schema::Types::Coercible::String
          # @return [Integer] Review status
          attribute :approved, Schema::Types::Coercible::Int
          # @return [BaseBoolInt] Information whether the ad is a video
          attribute :video, Schema::Types::BaseBoolInt.optional
          # @return [BaseBoolInt] Information whether disclaimer is enabled
          attribute :disclaimer_medical, Schema::Types::BaseBoolInt.optional
          # @return [BaseBoolInt] Information whether disclaimer is enabled
          attribute :disclaimer_specialist, Schema::Types::BaseBoolInt.optional
          # @return [BaseBoolInt] Information whether disclaimer is enabled
          attribute :disclaimer_supplements, Schema::Types::BaseBoolInt.optional
        end
      end
    end
  end
end
