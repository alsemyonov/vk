# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Wallpost < Vk::Schema::Object
        # @return [Integer] Post ID
        attribute :id, API::Types::Coercible::Int.optional
        # @return [Integer] Post author ID
        attribute :from_id, API::Types::Coercible::Int.optional
        # @return [Integer] Wall owner's ID
        attribute :owner_id, API::Types::Coercible::Int.optional
        # @return [Integer] Date of publishing in Unixtime
        attribute :date, API::Types::Coercible::Int.optional
        # @return [API::Wall::PostType] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :post_type, API::Wall::PostType.optional
        # @return [String] Post text
        attribute :text, API::Types::Coercible::String.optional
        # @return [Integer] Post signer ID
        attribute :signer_id, API::Types::Coercible::Int.optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :attachments, API::Types::Coercible::Array.member(API::Wall::WallpostAttachment).optional
        # @return [API::Base::Geo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :geo, Dry::Types[API::Base::Geo].optional
        # @return [API::Wall::PostSource] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :post_source, Dry::Types[API::Wall::PostSource].optional
      end
    end
  end
end
