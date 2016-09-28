# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Notifications < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Feedback < Vk::Schema::Object
        # @return [Integer] Item ID
        attribute :id, API::Types::Coercible::Int.optional
        # @return [Integer] Wall owner's ID
        attribute :to_id, API::Types::Coercible::Int.optional
        # @return [Integer] Reply author's ID
        attribute :from_id, API::Types::Coercible::Int.optional
        # @return [String] Reply text
        attribute :text, API::Types::Coercible::String.optional
        # @return [API::Base::LikesInfo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :likes, Dry::Types[API::Base::LikesInfo].optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :attachments, API::Types::Coercible::Array.member(API::Wall::WallpostAttachment).optional
        # @return [API::Base::Geo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :geo, Dry::Types[API::Base::Geo].optional
      end
    end
  end
end
