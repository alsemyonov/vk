# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Notifications < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Feedback < Vk::Schema::Object
        # @return [Integer] Item ID
        attribute :id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Wall owner's ID
        attribute :to_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Reply author's ID
        attribute :from_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Reply text
        attribute :text, API::Types::Coercible::String.optional.default(nil)
        # @return [API::Base::LikesInfo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :likes, Dry::Types[API::Base::LikesInfo].optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :attachments, API::Types::Coercible::Array.member(API::Wall::WallpostAttachment).optional.default(nil)
        # @return [API::Base::Geo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :geo, Dry::Types[API::Base::Geo].optional.default(nil)
      end
    end
  end
end
