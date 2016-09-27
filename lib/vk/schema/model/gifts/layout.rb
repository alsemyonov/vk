# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Gifts
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Layout < Vk::Schema::Model
          # @return [Integer] Gift ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [String] URL of the preview image with 256 px in width
          attribute :thumb_256, Schema::Types::Coercible::String.optional
          # @return [String] URL of the preview image with 96 px in width
          attribute :thumb_96, Schema::Types::Coercible::String.optional
          # @return [String] URL of the preview image with 48 px in width
          attribute :thumb_48, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
