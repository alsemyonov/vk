# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class WallComment < Vk::Schema::Object
        # @return [Integer] Comment ID
        attribute :id, API::Types::Coercible::Int
        # @return [Integer] Author ID
        attribute :from_id, API::Types::Coercible::Int
        # @return [Integer] Date when the comment has been added in Unixtime
        attribute :date, API::Types::Coercible::Int
        # @return [String] Comment text
        attribute :text, API::Types::Coercible::String
        # @return [API::Base::LikesInfo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :likes, Dry::Types[API::Base::LikesInfo].optional.default(nil)
        # @return [Integer] Replied user ID
        attribute :reply_to_user, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Replied comment ID
        attribute :reply_to_comment, API::Types::Coercible::Int.optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :attachments, API::Types::Coercible::Array.member(API::Wall::CommentAttachment).optional.default(nil)
        # @return [Integer] Real position of the comment
        attribute :real_offset, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
