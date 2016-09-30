# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class WallpostFull < Vk::Schema::Object
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :copy_history, API::Types::Coercible::Array.member(API::Wall::Wallpost).optional.default(nil)
        # @return [Integer] Information whether current user can edit the post
        attribute :can_edit, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Post creator ID (if post still can be edited)
        attribute :created_by, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Information whether current user can delete the post
        attribute :can_delete, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Information whether current user can pin the post
        attribute :can_pin, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Information whether the post is pinned
        attribute :is_pinned, API::Types::Coercible::Int.optional.default(nil)
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
