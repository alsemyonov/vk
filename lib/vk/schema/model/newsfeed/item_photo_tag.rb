# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Newsfeed
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class ItemPhotoTag < Vk::Schema::Model
          # @return [Hash] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :photo_tags, Schema::Types::Coercible::Hash.optional
          # @return [Integer] Post ID
          attribute :post_id, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
