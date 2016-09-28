# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Widgets < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class CommentRepliesItem < Vk::Schema::Object
        # @return [Integer] Comment ID
        attribute :cid, API::Types::Coercible::Int.optional
        # @return [Integer] User ID
        attribute :uid, API::Types::Coercible::Int.optional
        # @return [Integer] Date when the comment has been added in Unixtime
        attribute :date, API::Types::Coercible::Int.optional
        # @return [String] Comment text
        attribute :text, API::Types::Coercible::String.optional
        # @return [API::Widgets::WidgetLikes] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :likes, Dry::Types[API::Widgets::WidgetLikes].optional
        # @return [API::Users::UserFull] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :user, Dry::Types[API::Users::UserFull].optional
      end
    end
  end
end
