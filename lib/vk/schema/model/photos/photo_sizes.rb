# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Photos
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class PhotoSizes < Vk::Schema::Model
          # @return [String] URL of the image
          attribute :src, Schema::Types::Coercible::String
          # @return [Integer] Width in px
          attribute :width, Schema::Types::Coercible::Int
          # @return [Integer] Height in px
          attribute :height, Schema::Types::Coercible::Int
          # @return [String] Size type
          attribute :type, Schema::Types::Coercible::String
        end
      end
    end
  end
end
