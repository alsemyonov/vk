# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Newsfeed < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class ItemWallpost < Vk::Schema::Object
        # @return [Integer] Post ID
        attribute :post_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Post type
        attribute :post_type, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Post text
        attribute :text, API::Types::Coercible::String.optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :copy_history, API::Types::Coercible::Array.member(API::Wall::Wallpost).optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :attachments, API::Types::Coercible::Array.member(API::Wall::WallpostAttachment).optional.default(nil)
        # @return [API::Base::Geo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :geo, Dry::Types[API::Base::Geo].optional.default(nil)
        # @return [API::Wall::PostSource] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :post_source, Dry::Types[API::Wall::PostSource].optional.default(nil)
        # @return [API::Base::CommentsInfo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :comments, Dry::Types[API::Base::CommentsInfo].optional.default(nil)
        # @return [API::Base::LikesInfo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :likes, Dry::Types[API::Base::LikesInfo].optional.default(nil)
        # @return [API::Base::RepostsInfo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :reposts, Dry::Types[API::Base::RepostsInfo].optional.default(nil)
      end
    end
  end
end
