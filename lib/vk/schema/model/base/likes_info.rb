# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Base
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class LikesInfo < Vk::Schema::Model
          # @return [Integer] Likes number
          attribute :count, Schema::Types::Coercible::Int
          # @return [Integer] Information whether current uer has liked the post
          attribute :user_likes, Schema::Types::Coercible::Int
          # @return [Integer] Information whether current user can like the post
          attribute :can_like, Schema::Types::Coercible::Int
          # @return [Integer] Information whether current user can repost
          attribute :can_publish, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
