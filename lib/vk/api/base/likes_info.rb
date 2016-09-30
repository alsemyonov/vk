# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Base < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class LikesInfo < Vk::Schema::Object
        # @return [Integer] Likes number
        attribute :count, API::Types::Coercible::Int
        # @return [Integer] Information whether current uer has liked the post
        attribute :user_likes, API::Types::Coercible::Int
        # @return [Integer] Information whether current user can like the post
        attribute :can_like, API::Types::Coercible::Int
        # @return [Integer] Information whether current user can repost
        attribute :can_publish, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
