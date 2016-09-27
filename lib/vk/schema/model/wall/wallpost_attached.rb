# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Wall
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class WallpostAttached < Vk::Schema::Model
          # @return [Integer] Post ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Post author ID
          attribute :from_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Post addresse
          attribute :to_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Date of publishing in Unixtime
          attribute :date, Schema::Types::Coercible::Int.optional
          # @return [WallPostType] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :post_type, Schema::Types::WallPostType.optional
          # @return [String] Post text
          attribute :text, Schema::Types::Coercible::String.optional
          # @return [Integer] Information whether current user can delete the post
          attribute :can_delete, Schema::Types::Coercible::Int.optional
          # @return [Integer] Post signer ID
          attribute :signer_id, Schema::Types::Coercible::Int.optional
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
          # @return [Integer] Source post owner's ID
          attribute :copy_owner_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Source post ID
          attribute :copy_post_id, Schema::Types::Coercible::Int.optional
          # @return [String] Repost comment
          attribute :copy_text, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end