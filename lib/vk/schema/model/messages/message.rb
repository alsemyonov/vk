# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Messages
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Message < Vk::Schema::Model
          # @return [Integer] Message ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Date when the message has been sent in Unixtime
          attribute :date, Schema::Types::Coercible::Int.optional
          # @return [BaseBoolInt] Information whether the message is outcoming
          attribute :out, Schema::Types::BaseBoolInt.optional
          # @return [Integer] Message author's ID
          attribute :user_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] ID used for sending messages. It returned only for outgoing messages
          attribute :random_id, Schema::Types::Coercible::Int.optional
          # @return [Boolean] Is it an important message
          attribute :important, Schema::Types::Bool.optional
          # @return [Boolean] Is it an deleted message
          attribute :deleted, Schema::Types::Bool.optional
          # @return [Array] Forwarded messages
          attribute :fwd_messages, Schema::Types::Coercible::Array.member(Model::Messages::Message).optional
          # @return [BaseBoolInt] Information whether the messages is read
          attribute :read_state, Schema::Types::BaseBoolInt.optional
          # @return [String] Message title or chat title
          attribute :title, Schema::Types::Coercible::String.optional
          # @return [String] Message text
          attribute :body, Schema::Types::Coercible::String.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :attachments, Schema::Types::Coercible::Array.member(Model::Messages::MessageAttachment).optional
          # @return [Integer] Chat ID
          attribute :chat_id, Schema::Types::Coercible::Int.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :chat_active, Schema::Types::Coercible::Array.optional
          # @return [Integer] Chat users number
          attribute :users_count, Schema::Types::Coercible::Int.optional
          # @return [Integer] Chat administrator ID
          attribute :admin_id, Schema::Types::Coercible::Int.optional
          # @return [String] URL of the preview image with 50px in width
          attribute :photo_50, Schema::Types::Coercible::String.optional
          # @return [String] URL of the preview image with 100px in width
          attribute :photo_100, Schema::Types::Coercible::String.optional
          # @return [String] URL of the preview image with 200px in width
          attribute :photo_200, Schema::Types::Coercible::String.optional
          # @return [Geo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :geo, Dry::Types[Model::Base::Geo].optional
        end
      end
    end
  end
end
