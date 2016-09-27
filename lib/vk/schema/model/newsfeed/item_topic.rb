# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Newsfeed
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class ItemTopic < Vk::Schema::Model
          # @return [Integer] Topic post ID
          attribute :post_id, Schema::Types::Coercible::Int
          # @return [String] Post text
          attribute :text, Schema::Types::Coercible::String
          # @return [CommentsInfo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :comments, Dry::Types[Model::Base::CommentsInfo].optional
          # @return [LikesInfo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :likes, Dry::Types[Model::Base::LikesInfo].optional
        end
      end
    end
  end
end
