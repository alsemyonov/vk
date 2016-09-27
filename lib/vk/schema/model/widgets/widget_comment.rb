# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Widgets
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class WidgetComment < Vk::Schema::Model
          # @return [Integer] Comment ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [Integer] Comment author ID
          attribute :from_id, Schema::Types::Coercible::Int
          # @return [Integer] Wall owner
          attribute :to_id, Schema::Types::Coercible::Int
          # @return [Integer] Date when the comment has been added in Unixtime
          attribute :date, Schema::Types::Coercible::Int
          # @return [UserFull] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :user, Dry::Types[Model::Users::UserFull].optional
          # @return [Integer] Post type
          attribute :post_type, Schema::Types::Coercible::Int
          # @return [String] Comment text
          attribute :text, Schema::Types::Coercible::String
          # @return [Integer] Information whether current user can delete the comment
          attribute :can_delete, Schema::Types::Coercible::Int.optional
          # @return [CommentMedia] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :media, Dry::Types[Model::Widgets::CommentMedia].optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :attachments, Schema::Types::Coercible::Array.member(Model::Wall::CommentAttachment).optional
          # @return [PostSource] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :post_source, Dry::Types[Model::Wall::PostSource].optional
          # @return [CommentReplies] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :comments, Dry::Types[Model::Widgets::CommentReplies].optional
          # @return [LikesInfo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :likes, Dry::Types[Model::Base::LikesInfo].optional
          # @return [RepostsInfo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :reposts, Dry::Types[Model::Base::RepostsInfo].optional
        end
      end
    end
  end
end
