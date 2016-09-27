# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Base
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Sticker < Vk::Schema::Model
          # @return [Integer] Sticker ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [Integer] Collection ID
          attribute :product_id, Schema::Types::Coercible::Int.optional
          # @return [String] URL of the preview image with 64 px in height
          attribute :photo_64, Schema::Types::Coercible::String.optional
          # @return [String] URL of the preview image with 128 px in height
          attribute :photo_128, Schema::Types::Coercible::String.optional
          # @return [String] URL of the preview image with 256 px in height
          attribute :photo_256, Schema::Types::Coercible::String.optional
          # @return [String] URL of the preview image with 352 px in height
          attribute :photo_352, Schema::Types::Coercible::String.optional
          # @return [Integer] Width in px
          attribute :width, Schema::Types::Coercible::Int.optional
          # @return [Integer] Hieght in px
          attribute :height, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
