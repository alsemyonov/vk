# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class PushParams < Vk::Schema::Object
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :msg, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :chat, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :friend, API::Types::Coercible::Array.member(API::Account::OnoffOptions).optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :friend_found, API::Types::Coercible::Array.member(API::Account::OnoffOptions).optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :friend_accepted, API::Types::Coercible::Array.member(API::Account::OnoffOptions).optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :reply, API::Types::Coercible::Array.member(API::Account::OnoffOptions).optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :comment, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :mention, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :like, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :repost, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :wall_post, API::Types::Coercible::Array.member(API::Account::OnoffOptions).optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :wall_publish, API::Types::Coercible::Array.member(API::Account::OnoffOptions).optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :group_invite, API::Types::Coercible::Array.member(API::Account::OnoffOptions).optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :group_accepted, API::Types::Coercible::Array.member(API::Account::OnoffOptions).optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :event_soon, API::Types::Coercible::Array.member(API::Account::OnoffOptions).optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :photos_tag, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :app_request, API::Types::Coercible::Array.member(API::Account::OnoffOptions).optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :sdk_open, API::Types::Coercible::Array.member(API::Account::OnoffOptions).optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :new_post, API::Types::Coercible::Array.member(API::Account::OnoffOptions).optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :birthday, API::Types::Coercible::Array.member(API::Account::OnoffOptions).optional.default(nil)
      end
    end
  end
end
