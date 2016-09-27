# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Ads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class AdLayout < Vk::Schema::Model
          # @return [Integer] Ad ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [Integer] Campaign ID
          attribute :campaign_id, Schema::Types::Coercible::Int
          # @return [Integer] Ad format
          attribute :ad_format, Schema::Types::Coercible::Int.optional
          # @return [Integer] Cost type
          attribute :cost_type, Schema::Types::Coercible::Int
          # @return [BaseBoolInt] Information whether the ad is a video
          attribute :video, Schema::Types::BaseBoolInt.optional
          # @return [String] Ad title
          attribute :title, Schema::Types::Coercible::String
          # @return [String] Ad description
          attribute :description, Schema::Types::Coercible::String.optional
          # @return [String] URL of advertised object
          attribute :link_url, Schema::Types::Coercible::String.optional
          # @return [String] Domain of advertised object
          attribute :link_domain, Schema::Types::Coercible::String.optional
          # @return [Integer, String] link to preview an ad as it is shown on the website
          attribute :preview_link, Schema::Types::Coercible::Int | Schema::Types::Coercible::String.optional
          # @return [Integer] Image URL
          attribute :image_src, Schema::Types::Coercible::Int
          # @return [Integer] URL of the preview image in double size
          attribute :image_src_2x, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
