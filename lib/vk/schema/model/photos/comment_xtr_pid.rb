# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Photos
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class CommentXtrPid < Vk::Schema::Model
          # @return [Integer] Comment ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [Integer] Author ID
          attribute :from_id, Schema::Types::Coercible::Int
          # @return [Integer] Date when the comment has been added in Unixtime
          attribute :date, Schema::Types::Coercible::Int
          # @return [String] Comment text
          attribute :text, Schema::Types::Coercible::String
          # @return [LikesInfo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :likes, Dry::Types[Model::Base::LikesInfo].optional
          # @return [Integer] Replied user ID
          attribute :reply_to_user, Schema::Types::Coercible::Int.optional
          # @return [Integer] Replied comment ID
          attribute :reply_to_comment, Schema::Types::Coercible::Int.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :attachments, Schema::Types::Coercible::Array.member(Model::Wall::CommentAttachment).optional
          # @return [Integer] Photo ID
          attribute :pid, Schema::Types::Coercible::Int
        end
      end
    end
  end
end
