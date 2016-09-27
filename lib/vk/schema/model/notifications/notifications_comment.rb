# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Notifications
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class NotificationsComment < Vk::Schema::Model
          # @return [Integer] Comment ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Author ID
          attribute :owner_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Date when the comment has been added in Unixtime
          attribute :date, Schema::Types::Coercible::Int.optional
          # @return [String] Comment text
          attribute :text, Schema::Types::Coercible::String.optional
          # @return [Photo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :photo, Dry::Types[Model::Photos::Photo].optional
          # @return [Video] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :video, Dry::Types[Model::Video::Video].optional
          # @return [Wallpost] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :post, Dry::Types[Model::Wall::Wallpost].optional
          # @return [Topic] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :topic, Dry::Types[Model::Board::Topic].optional
        end
      end
    end
  end
end
