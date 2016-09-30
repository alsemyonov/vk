# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Gifts < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Layout < Vk::Schema::Object
        # @return [Integer] Gift ID
        attribute :id, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] URL of the preview image with 256 px in width
        attribute :thumb_256, API::Types::Coercible::String.optional.default(nil)
        # @return [String] URL of the preview image with 96 px in width
        attribute :thumb_96, API::Types::Coercible::String.optional.default(nil)
        # @return [String] URL of the preview image with 48 px in width
        attribute :thumb_48, API::Types::Coercible::String.optional.default(nil)
      end
    end
  end
end
