# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Ads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class StatsFormat < Vk::Schema::Model
          # @return [String] Day as YYYY-MM-DD
          attribute :day, Schema::Types::Coercible::String.optional
          # @return [String] Month as YYYY-MM
          attribute :month, Schema::Types::Coercible::String.optional
          # @return [Integer] 1 if period=overall
          attribute :overall, Schema::Types::Coercible::Int.optional
          # @return [Integer] Spent funds
          attribute :spent, Schema::Types::Coercible::Int.optional
          # @return [Integer] Impressions number
          attribute :impressions, Schema::Types::Coercible::Int.optional
          # @return [Integer] Clicks number
          attribute :clicks, Schema::Types::Coercible::Int.optional
          # @return [Integer] Reach
          attribute :reach, Schema::Types::Coercible::Int.optional
          # @return [Integer] Video views number
          attribute :video_views, Schema::Types::Coercible::Int.optional
          # @return [Integer] Video views (half of video)
          attribute :video_views_half, Schema::Types::Coercible::Int.optional
          # @return [Integer] Video views (full video)
          attribute :video_views_full, Schema::Types::Coercible::Int.optional
          # @return [Integer] Clickthoughs to the advertised site
          attribute :video_clicks_site, Schema::Types::Coercible::Int.optional
          # @return [Integer] Events number
          attribute :join_rate, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
