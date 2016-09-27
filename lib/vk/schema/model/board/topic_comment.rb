# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Board
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class TopicComment < Vk::Schema::Model
          # @return [Integer] Comment ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [Integer] Author ID
          attribute :from_id, Schema::Types::Coercible::Int
          # @return [Integer] Date when the comment has been added in Unixtime
          attribute :date, Schema::Types::Coercible::Int
          # @return [String] Comment text
          attribute :text, Schema::Types::Coercible::String
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :attachments, Schema::Types::Coercible::Array.member(Model::Wall::CommentAttachment).optional
          # @return [Integer] Real position of the comment
          attribute :real_offset, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
