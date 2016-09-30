# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Widgets < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class CommentReplies < Vk::Schema::Object
        # @return [Integer] Comments number
        attribute :count, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Information whether current user can comment the post
        attribute :can_post, API::Types::Coercible::Int.optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :replies, API::Types::Coercible::Array.member(API::Widgets::CommentRepliesItem).optional.default(nil)
      end
    end
  end
end
