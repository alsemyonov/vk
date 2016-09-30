# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class PhotoSizes < Vk::Schema::Object
        # @return [String] URL of the image
        attribute :src, API::Types::Coercible::String
        # @return [Integer] Width in px
        attribute :width, API::Types::Coercible::Int
        # @return [Integer] Height in px
        attribute :height, API::Types::Coercible::Int
        # @return [String] Size type
        attribute :type, API::Types::Coercible::String.enum("s", "m", "x", "o", "p", "q", "r", "y", "z", "w")
      end
    end
  end
end
