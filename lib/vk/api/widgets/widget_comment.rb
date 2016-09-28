# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Widgets < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class WidgetComment < Vk::Schema::Object
        # @return [Integer] Comment ID
        attribute :id, API::Types::Coercible::Int
        # @return [Integer] Comment author ID
        attribute :from_id, API::Types::Coercible::Int
        # @return [Integer] Wall owner
        attribute :to_id, API::Types::Coercible::Int
        # @return [Integer] Date when the comment has been added in Unixtime
        attribute :date, API::Types::Coercible::Int
        # @return [API::Users::UserFull] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :user, Dry::Types[API::Users::UserFull].optional
        # @return [Integer] Post type
        attribute :post_type, API::Types::Coercible::Int
        # @return [String] Comment text
        attribute :text, API::Types::Coercible::String
        # @return [Integer] Information whether current user can delete the comment
        attribute :can_delete, API::Types::Coercible::Int.optional
        # @return [API::Widgets::CommentMedia] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :media, Dry::Types[API::Widgets::CommentMedia].optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :attachments, API::Types::Coercible::Array.member(API::Wall::CommentAttachment).optional
        # @return [API::Wall::PostSource] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :post_source, Dry::Types[API::Wall::PostSource].optional
        # @return [API::Widgets::CommentReplies] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :comments, Dry::Types[API::Widgets::CommentReplies].optional
        # @return [API::Base::LikesInfo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :likes, Dry::Types[API::Base::LikesInfo].optional
        # @return [API::Base::RepostsInfo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :reposts, Dry::Types[API::Base::RepostsInfo].optional
      end
    end
  end
end
