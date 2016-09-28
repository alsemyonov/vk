# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Newsfeed < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class ItemTopic < Vk::Schema::Object
        # @return [Integer] Topic post ID
        attribute :post_id, API::Types::Coercible::Int
        # @return [String] Post text
        attribute :text, API::Types::Coercible::String
        # @return [API::Base::CommentsInfo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :comments, Dry::Types[API::Base::CommentsInfo].optional
        # @return [API::Base::LikesInfo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :likes, Dry::Types[API::Base::LikesInfo].optional
      end
    end
  end
end
