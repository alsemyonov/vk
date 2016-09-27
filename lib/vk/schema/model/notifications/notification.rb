# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Notifications
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Notification < Vk::Schema::Model
          # @return [String] Notification type
          attribute :type, Schema::Types::Coercible::String.optional
          # @return [Integer] Date when the event has been occured
          attribute :date, Schema::Types::Coercible::Int.optional
          # @return [Model::Wall::WallpostToId, Model::Photos::Photo, Model::Board::Topic, Model::Video::Video, Model::Notifications::NotificationsComment] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :parent, Dry::Types[Model::Wall::WallpostToId] | Dry::Types[Model::Photos::Photo] | Dry::Types[Model::Board::Topic] | Dry::Types[Model::Video::Video] | Dry::Types[Model::Notifications::NotificationsComment].optional
          # @return [Feedback] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :feedback, Dry::Types[Model::Notifications::Feedback].optional
          # @return [Reply] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :reply, Dry::Types[Model::Notifications::Reply].optional
        end
      end
    end
  end
end
