# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Apps < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class App < Vk::Schema::Object
        # @return [Integer] Application ID
        attribute :id, API::Types::Coercible::Int
        # @return [String] Application title
        attribute :title, API::Types::Coercible::String
        # @return [String] Screen name
        attribute :screen_name, API::Types::Coercible::String.optional
        # @return [String] Application description
        attribute :description, API::Types::Coercible::String.optional
        # @return [String] URL of the app icon with 100 px in width
        attribute :icon_100, API::Types::Coercible::String.optional
        # @return [String] URL of the app icon with 200 px in width
        attribute :icon_200, API::Types::Coercible::String.optional
        # @return [String] URL of the app icon with 75 px in width
        attribute :icon_75, API::Types::Coercible::String.optional
        # @return [String] URL of the app icon with 50 px in width
        attribute :icon_50, API::Types::Coercible::String.optional
        # @return [String] URL of the app icon with 16 px in width
        attribute :icon_16, API::Types::Coercible::String.optional
        # @return [String] URL of the app banner with 186 px in width
        attribute :banner_186, API::Types::Coercible::String.optional
        # @return [String] URL of the app banner with 896 px in width
        attribute :banner_896, API::Types::Coercible::String.optional
        # @return [String] Application type
        attribute :type, API::Types::Coercible::String
        # @return [String] Application section name
        attribute :section, API::Types::Coercible::String.optional
        # @return [String] Application author's URL
        attribute :author_url, API::Types::Coercible::String.optional
        # @return [Integer] Application author's ID
        attribute :author_id, API::Types::Coercible::Int.optional
        # @return [Integer] Official community's ID
        attribute :author_group, API::Types::Coercible::Int.optional
        # @return [Integer] Members number
        attribute :members_count, API::Types::Coercible::Int.optional
        # @return [Integer] Date when the application has been published in Unixtime
        attribute :published_date, API::Types::Coercible::Int.optional
        # @return [Integer] Catalog position
        attribute :catalog_position, API::Types::Coercible::Int.optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :screenshots, API::Types::Coercible::Array.member(API::Photos::Photo).optional
        # @return [Integer] Information whether the application is multilanguage
        attribute :international, API::Types::Coercible::Int.optional
        # @return [Integer] Leaderboard type
        attribute :leaderboard_type, API::Types::Coercible::Int.optional
        # @return [Integer] Genre ID
        attribute :genre_id, API::Types::Coercible::Int.optional
        # @return [String] Genre name
        attribute :genre, API::Types::Coercible::String.optional
        # @return [Integer] Application ID in store
        attribute :platform_id, API::Types::Coercible::Int.optional
        # @return [Integer] Information whther application is in mobile catalog
        attribute :is_in_catalog, API::Types::Coercible::Int.optional
      end
    end
  end
end
