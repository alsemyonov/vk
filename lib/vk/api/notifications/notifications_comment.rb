# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Notifications < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class NotificationsComment < Vk::Schema::Object
        # @return [Integer] Comment ID
        attribute :id, API::Types::Coercible::Int.optional
        # @return [Integer] Author ID
        attribute :owner_id, API::Types::Coercible::Int.optional
        # @return [Integer] Date when the comment has been added in Unixtime
        attribute :date, API::Types::Coercible::Int.optional
        # @return [String] Comment text
        attribute :text, API::Types::Coercible::String.optional
        # @return [API::Photos::Photo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :photo, Dry::Types[API::Photos::Photo].optional
        # @return [API::Video::Video] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :video, Dry::Types[API::Video::Video].optional
        # @return [API::Wall::Wallpost] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :post, Dry::Types[API::Wall::Wallpost].optional
        # @return [API::Board::Topic] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :topic, Dry::Types[API::Board::Topic].optional
      end
    end
  end
end
