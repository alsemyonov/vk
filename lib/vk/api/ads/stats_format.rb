# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class StatsFormat < Vk::Schema::Object
        # @return [String] Day as YYYY-MM-DD
        attribute :day, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Month as YYYY-MM
        attribute :month, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] 1 if period=overall
        attribute :overall, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Spent funds
        attribute :spent, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Impressions number
        attribute :impressions, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Clicks number
        attribute :clicks, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Reach
        attribute :reach, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Video views number
        attribute :video_views, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Video views (half of video)
        attribute :video_views_half, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Video views (full video)
        attribute :video_views_full, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Clickthoughs to the advertised site
        attribute :video_clicks_site, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Events number
        attribute :join_rate, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
