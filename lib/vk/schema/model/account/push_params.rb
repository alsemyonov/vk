# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Account
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class PushParams < Vk::Schema::Model
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :msg, Schema::Types::Coercible::Array.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :chat, Schema::Types::Coercible::Array.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :friend, Schema::Types::Coercible::Array.member(Schema::Types::AccountOnoffOptions).optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :friend_found, Schema::Types::Coercible::Array.member(Schema::Types::AccountOnoffOptions).optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :friend_accepted, Schema::Types::Coercible::Array.member(Schema::Types::AccountOnoffOptions).optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :reply, Schema::Types::Coercible::Array.member(Schema::Types::AccountOnoffOptions).optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :comment, Schema::Types::Coercible::Array.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :mention, Schema::Types::Coercible::Array.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :like, Schema::Types::Coercible::Array.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :repost, Schema::Types::Coercible::Array.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :wall_post, Schema::Types::Coercible::Array.member(Schema::Types::AccountOnoffOptions).optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :wall_publish, Schema::Types::Coercible::Array.member(Schema::Types::AccountOnoffOptions).optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :group_invite, Schema::Types::Coercible::Array.member(Schema::Types::AccountOnoffOptions).optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :group_accepted, Schema::Types::Coercible::Array.member(Schema::Types::AccountOnoffOptions).optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :event_soon, Schema::Types::Coercible::Array.member(Schema::Types::AccountOnoffOptions).optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :photos_tag, Schema::Types::Coercible::Array.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :app_request, Schema::Types::Coercible::Array.member(Schema::Types::AccountOnoffOptions).optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :sdk_open, Schema::Types::Coercible::Array.member(Schema::Types::AccountOnoffOptions).optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :new_post, Schema::Types::Coercible::Array.member(Schema::Types::AccountOnoffOptions).optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :birthday, Schema::Types::Coercible::Array.member(Schema::Types::AccountOnoffOptions).optional
        end
      end
    end
  end
end
