# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Notifications
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Feedback < Vk::Schema::Model
          # @return [Integer] Item ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Wall owner's ID
          attribute :to_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Reply author's ID
          attribute :from_id, Schema::Types::Coercible::Int.optional
          # @return [String] Reply text
          attribute :text, Schema::Types::Coercible::String.optional
          # @return [LikesInfo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :likes, Dry::Types[Model::Base::LikesInfo].optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :attachments, Schema::Types::Coercible::Array.member(Model::Wall::WallpostAttachment).optional
          # @return [Geo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :geo, Dry::Types[Model::Base::Geo].optional
        end
      end
    end
  end
end
