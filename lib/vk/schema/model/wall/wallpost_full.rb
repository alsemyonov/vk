# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Wall
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class WallpostFull < Vk::Schema::Model
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :copy_history, Schema::Types::Coercible::Array.member(Model::Wall::Wallpost).optional
          # @return [Integer] Information whether current user can edit the post
          attribute :can_edit, Schema::Types::Coercible::Int.optional
          # @return [Integer] Post creator ID (if post still can be edited)
          attribute :created_by, Schema::Types::Coercible::Int.optional
          # @return [Integer] Information whether current user can delete the post
          attribute :can_delete, Schema::Types::Coercible::Int.optional
          # @return [Integer] Information whether current user can pin the post
          attribute :can_pin, Schema::Types::Coercible::Int.optional
          # @return [Integer] Information whether the post is pinned
          attribute :is_pinned, Schema::Types::Coercible::Int.optional
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
