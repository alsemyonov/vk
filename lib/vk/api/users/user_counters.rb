# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Users < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class UserCounters < Vk::Schema::Object
        # @return [Integer] Albums number
        attribute :albums, API::Types::Coercible::Int.optional
        # @return [Integer] Videos number
        attribute :videos, API::Types::Coercible::Int.optional
        # @return [Integer] Audios number
        attribute :audios, API::Types::Coercible::Int.optional
        # @return [Integer] Notes number
        attribute :notes, API::Types::Coercible::Int.optional
        # @return [Integer] Photos number
        attribute :photos, API::Types::Coercible::Int.optional
        # @return [Integer] Communities number
        attribute :groups, API::Types::Coercible::Int.optional
        # @return [Integer] Gifts number
        attribute :gifts, API::Types::Coercible::Int.optional
        # @return [Integer] Friends number
        attribute :friends, API::Types::Coercible::Int.optional
        # @return [Integer] Online friends number
        attribute :online_friends, API::Types::Coercible::Int.optional
        # @return [Integer] Number of photos with user
        attribute :user_photos, API::Types::Coercible::Int.optional
        # @return [Integer] Number of videos with user
        attribute :user_videos, API::Types::Coercible::Int.optional
        # @return [Integer] Followers number
        attribute :followers, API::Types::Coercible::Int.optional
        # @return [Integer] Subscriptions number
        attribute :subscriptions, API::Types::Coercible::Int.optional
        # @return [Integer] Public pages number
        attribute :pages, API::Types::Coercible::Int.optional
      end
    end
  end
end
