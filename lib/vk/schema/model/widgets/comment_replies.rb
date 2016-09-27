# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Widgets
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class CommentReplies < Vk::Schema::Model
          # @return [Integer] Comments number
          attribute :count, Schema::Types::Coercible::Int.optional
          # @return [Integer] Information whether current user can comment the post
          attribute :can_post, Schema::Types::Coercible::Int.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :replies, Schema::Types::Coercible::Array.member(Model::Widgets::CommentRepliesItem).optional
        end
      end
    end
  end
end
