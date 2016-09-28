# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Notifications < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Notification < Vk::Schema::Object
        # @return [String] Notification type
        attribute :type, API::Types::Coercible::String.optional
        # @return [Integer] Date when the event has been occured
        attribute :date, API::Types::Coercible::Int.optional
        # @return [API::Wall::WallpostToId, API::Photos::Photo, API::Board::Topic, API::Video::Video, API::Notifications::NotificationsComment] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :parent, Dry::Types[API::Wall::WallpostToId] | Dry::Types[API::Photos::Photo] | Dry::Types[API::Board::Topic] | Dry::Types[API::Video::Video] | Dry::Types[API::Notifications::NotificationsComment].optional
        # @return [API::Notifications::Feedback] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :feedback, Dry::Types[API::Notifications::Feedback].optional
        # @return [API::Notifications::Reply] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :reply, Dry::Types[API::Notifications::Reply].optional
      end
    end
  end
end
