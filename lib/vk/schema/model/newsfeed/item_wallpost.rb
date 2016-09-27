# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Newsfeed
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class ItemWallpost < Vk::Schema::Model
          # @return [Integer] Post ID
          attribute :post_id, Schema::Types::Coercible::Int.optional
          # @return [String] Post type
          attribute :post_type, Schema::Types::Coercible::String.optional
          # @return [String] Post text
          attribute :text, Schema::Types::Coercible::String.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :copy_history, Schema::Types::Coercible::Array.member(Model::Wall::Wallpost).optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :attachments, Schema::Types::Coercible::Array.member(Model::Wall::WallpostAttachment).optional
          # @return [Geo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :geo, Dry::Types[Model::Base::Geo].optional
          # @return [PostSource] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :post_source, Dry::Types[Model::Wall::PostSource].optional
          # @return [CommentsInfo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :comments, Dry::Types[Model::Base::CommentsInfo].optional
          # @return [LikesInfo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :likes, Dry::Types[Model::Base::LikesInfo].optional
          # @return [RepostsInfo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :reposts, Dry::Types[Model::Base::RepostsInfo].optional
        end
      end
    end
  end
end
