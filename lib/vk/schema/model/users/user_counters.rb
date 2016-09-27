# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Users
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class UserCounters < Vk::Schema::Model
          # @return [Integer] Albums number
          attribute :albums, Schema::Types::Coercible::Int.optional
          # @return [Integer] Videos number
          attribute :videos, Schema::Types::Coercible::Int.optional
          # @return [Integer] Audios number
          attribute :audios, Schema::Types::Coercible::Int.optional
          # @return [Integer] Notes number
          attribute :notes, Schema::Types::Coercible::Int.optional
          # @return [Integer] Photos number
          attribute :photos, Schema::Types::Coercible::Int.optional
          # @return [Integer] Communities number
          attribute :groups, Schema::Types::Coercible::Int.optional
          # @return [Integer] Gifts number
          attribute :gifts, Schema::Types::Coercible::Int.optional
          # @return [Integer] Friends number
          attribute :friends, Schema::Types::Coercible::Int.optional
          # @return [Integer] Online friends number
          attribute :online_friends, Schema::Types::Coercible::Int.optional
          # @return [Integer] Number of photos with user
          attribute :user_photos, Schema::Types::Coercible::Int.optional
          # @return [Integer] Number of videos with user
          attribute :user_videos, Schema::Types::Coercible::Int.optional
          # @return [Integer] Followers number
          attribute :followers, Schema::Types::Coercible::Int.optional
          # @return [Integer] Subscriptions number
          attribute :subscriptions, Schema::Types::Coercible::Int.optional
          # @return [Integer] Public pages number
          attribute :pages, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
