# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Base < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Sticker < Vk::Schema::Object
        # @return [Integer] Sticker ID
        attribute :id, API::Types::Coercible::Int
        # @return [Integer] Collection ID
        attribute :product_id, API::Types::Coercible::Int.optional
        # @return [String] URL of the preview image with 64 px in height
        attribute :photo_64, API::Types::Coercible::String.optional
        # @return [String] URL of the preview image with 128 px in height
        attribute :photo_128, API::Types::Coercible::String.optional
        # @return [String] URL of the preview image with 256 px in height
        attribute :photo_256, API::Types::Coercible::String.optional
        # @return [String] URL of the preview image with 352 px in height
        attribute :photo_352, API::Types::Coercible::String.optional
        # @return [Integer] Width in px
        attribute :width, API::Types::Coercible::Int.optional
        # @return [Integer] Hieght in px
        attribute :height, API::Types::Coercible::Int.optional
      end
    end
  end
end
