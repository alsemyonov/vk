# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Message < Vk::Schema::Object
        # @return [Integer] Message ID
        attribute :id, API::Types::Coercible::Int.optional
        # @return [Integer] Date when the message has been sent in Unixtime
        attribute :date, API::Types::Coercible::Int.optional
        # @return [API::Base::BoolInt] Information whether the message is outcoming
        attribute :out, API::Base::BoolInt.optional
        # @return [Integer] Message author's ID
        attribute :user_id, API::Types::Coercible::Int.optional
        # @return [Integer] ID used for sending messages. It returned only for outgoing messages
        attribute :random_id, API::Types::Coercible::Int.optional
        # @return [Boolean] Is it an important message
        attribute :important, API::Types::Bool.optional
        # @return [Boolean] Is it an deleted message
        attribute :deleted, API::Types::Bool.optional
        # @return [Array] Forwarded messages
        attribute :fwd_messages, API::Types::Coercible::Array.member(API::Messages::Message).optional
        # @return [API::Base::BoolInt] Information whether the messages is read
        attribute :read_state, API::Base::BoolInt.optional
        # @return [String] Message title or chat title
        attribute :title, API::Types::Coercible::String.optional
        # @return [String] Message text
        attribute :body, API::Types::Coercible::String.optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :attachments, API::Types::Coercible::Array.member(API::Messages::MessageAttachment).optional
        # @return [Integer] Chat ID
        attribute :chat_id, API::Types::Coercible::Int.optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :chat_active, API::Types::Coercible::Array.optional
        # @return [Integer] Chat users number
        attribute :users_count, API::Types::Coercible::Int.optional
        # @return [Integer] Chat administrator ID
        attribute :admin_id, API::Types::Coercible::Int.optional
        # @return [String] URL of the preview image with 50px in width
        attribute :photo_50, API::Types::Coercible::String.optional
        # @return [String] URL of the preview image with 100px in width
        attribute :photo_100, API::Types::Coercible::String.optional
        # @return [String] URL of the preview image with 200px in width
        attribute :photo_200, API::Types::Coercible::String.optional
        # @return [API::Base::Geo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :geo, Dry::Types[API::Base::Geo].optional
      end
    end
  end
end
