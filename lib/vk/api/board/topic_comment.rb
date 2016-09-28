# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Board < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class TopicComment < Vk::Schema::Object
        # @return [Integer] Comment ID
        attribute :id, API::Types::Coercible::Int
        # @return [Integer] Author ID
        attribute :from_id, API::Types::Coercible::Int
        # @return [Integer] Date when the comment has been added in Unixtime
        attribute :date, API::Types::Coercible::Int
        # @return [String] Comment text
        attribute :text, API::Types::Coercible::String
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :attachments, API::Types::Coercible::Array.member(API::Wall::CommentAttachment).optional
        # @return [Integer] Real position of the comment
        attribute :real_offset, API::Types::Coercible::Int.optional
      end
    end
  end
end
