# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class AdLayout < Vk::Schema::Object
        # @return [Integer] Ad ID
        attribute :id, API::Types::Coercible::Int
        # @return [Integer] Campaign ID
        attribute :campaign_id, API::Types::Coercible::Int
        # @return [Integer] Ad format
        attribute :ad_format, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Cost type
        attribute :cost_type, API::Types::Coercible::Int.enum(0, 1)
        # @return [API::Base::BoolInt] Information whether the ad is a video
        attribute :video, API::Base::BoolInt.optional.default(nil)
        # @return [String] Ad title
        attribute :title, API::Types::Coercible::String
        # @return [String] Ad description
        attribute :description, API::Types::Coercible::String.optional.default(nil)
        # @return [String] URL of advertised object
        attribute :link_url, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Domain of advertised object
        attribute :link_domain, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer, String] link to preview an ad as it is shown on the website
        attribute :preview_link, API::Types::Coercible::Int | API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Image URL
        attribute :image_src, API::Types::Coercible::Int
        # @return [Integer] URL of the preview image in double size
        attribute :image_src_2x, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
