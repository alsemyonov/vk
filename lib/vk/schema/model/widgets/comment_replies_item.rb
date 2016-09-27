# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Widgets
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class CommentRepliesItem < Vk::Schema::Model
          # @return [Integer] Comment ID
          attribute :cid, Schema::Types::Coercible::Int.optional
          # @return [Integer] User ID
          attribute :uid, Schema::Types::Coercible::Int.optional
          # @return [Integer] Date when the comment has been added in Unixtime
          attribute :date, Schema::Types::Coercible::Int.optional
          # @return [String] Comment text
          attribute :text, Schema::Types::Coercible::String.optional
          # @return [WidgetLikes] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :likes, Dry::Types[Model::Widgets::WidgetLikes].optional
          # @return [UserFull] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :user, Dry::Types[Model::Users::UserFull].optional
        end
      end
    end
  end
end
