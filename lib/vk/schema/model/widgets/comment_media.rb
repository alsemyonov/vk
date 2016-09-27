# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Widgets
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class CommentMedia < Vk::Schema::Model
          # @return [String] Media type
          attribute :type, Schema::Types::Coercible::String.optional
          # @return [Integer] Media owner's ID
          attribute :owner_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Media item ID
          attribute :item_id, Schema::Types::Coercible::Int.optional
          # @return [String] URL of the preview image (type=photo only)
          attribute :thumb_src, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
