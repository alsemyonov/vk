# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class ChatFull < Vk::Schema::Object
        # @return [Integer] Chat ID
        attribute :id, API::Types::Coercible::Int
        # @return [String] Chat type
        attribute :type, API::Types::Coercible::String
        # @return [Integer] Chat creator ID
        attribute :admin_id, API::Types::Coercible::Int
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :users, API::Types::Coercible::Array.member(API::Messages::UserXtrInvitedBy)
        # @return [API::Messages::ChatPushSettings] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :push_settings, Dry::Types[API::Messages::ChatPushSettings].optional.default(nil)
        # @return [String] URL of the preview image with 50 px in width
        attribute :photo_50, API::Types::Coercible::String.optional.default(nil)
        # @return [String] URL of the preview image with 100 px in width
        attribute :photo_100, API::Types::Coercible::String.optional.default(nil)
        # @return [String] URL of the preview image with 200 px in width
        attribute :photo_200, API::Types::Coercible::String.optional.default(nil)
      end
    end
  end
end
