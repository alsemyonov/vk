# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class WallpostToId < Vk::Schema::Object
        # @return [Integer] Post ID
        attribute :id, API::Types::Coercible::Int.optional
        # @return [Integer] Post author ID
        attribute :from_id, API::Types::Coercible::Int.optional
        # @return [Integer] Wall owner's ID
        attribute :to_id, API::Types::Coercible::Int.optional
        # @return [Integer] Date of publishing in Unixtime
        attribute :date, API::Types::Coercible::Int.optional
        # @return [Integer] wall post ID (if comment)
        attribute :post_id, API::Types::Coercible::Int.optional
        # @return [API::Wall::PostType] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :post_type, API::Wall::PostType.optional
        # @return [String] Post text
        attribute :text, API::Types::Coercible::String.optional
        # @return [Integer] Post signer ID
        attribute :signer_id, API::Types::Coercible::Int.optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :attachments, API::Types::Coercible::Array.member(API::Wall::WallpostAttachment).optional
        # @return [API::Base::Geo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :geo, Dry::Types[API::Base::Geo].optional
        # @return [API::Wall::PostSource] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :post_source, Dry::Types[API::Wall::PostSource].optional
        # @return [API::Base::CommentsInfo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :comments, Dry::Types[API::Base::CommentsInfo].optional
        # @return [API::Base::LikesInfo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :likes, Dry::Types[API::Base::LikesInfo].optional
        # @return [API::Base::RepostsInfo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :reposts, Dry::Types[API::Base::RepostsInfo].optional
        # @return [Integer] ID of the source post owner
        attribute :copy_owner_id, API::Types::Coercible::Int.optional
        # @return [Integer] ID of the source post
        attribute :copy_post_id, API::Types::Coercible::Int.optional
      end
    end
  end
end
