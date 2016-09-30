# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Ad < Vk::Schema::Object
        # @return [Integer] Ad ID
        attribute :id, API::Types::Coercible::Int
        # @return [Integer] Campaign ID
        attribute :campaign_id, API::Types::Coercible::Int
        # @return [Integer] Ad format
        attribute :ad_format, API::Types::Coercible::Int
        # @return [Integer] Cost type
        attribute :cost_type, API::Types::Coercible::Int
        # @return [Integer] Cost of a click, kopecks
        attribute :cpc, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Cost of 1000 impressions, kopecks
        attribute :cpm, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Impressions limit
        attribute :impressions_limit, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Information whether impressions are limited
        attribute :impressions_limited, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer, String] Ad platform
        attribute :ad_platform, API::Types::Coercible::Int | API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Total limit
        attribute :all_limit, API::Types::Coercible::Int
        # @return [Integer] Category ID
        attribute :category1_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Additional category ID
        attribute :category2_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Ad atatus
        attribute :status, API::Types::Coercible::Int
        # @return [String] Ad title
        attribute :name, API::Types::Coercible::String
        # @return [Integer] Review status
        attribute :approved, API::Types::Coercible::Int
        # @return [API::Base::BoolInt] Information whether the ad is a video
        attribute :video, API::Base::BoolInt.optional.default(nil)
        # @return [API::Base::BoolInt] Information whether disclaimer is enabled
        attribute :disclaimer_medical, API::Base::BoolInt.optional.default(nil)
        # @return [API::Base::BoolInt] Information whether disclaimer is enabled
        attribute :disclaimer_specialist, API::Base::BoolInt.optional.default(nil)
        # @return [API::Base::BoolInt] Information whether disclaimer is enabled
        attribute :disclaimer_supplements, API::Base::BoolInt.optional.default(nil)
      end
    end
  end
end
