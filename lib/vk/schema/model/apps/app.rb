# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Apps
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class App < Vk::Schema::Model
          # @return [Integer] Application ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [String] Application title
          attribute :title, Schema::Types::Coercible::String
          # @return [String] Screen name
          attribute :screen_name, Schema::Types::Coercible::String.optional
          # @return [String] Application description
          attribute :description, Schema::Types::Coercible::String.optional
          # @return [String] URL of the app icon with 100 px in width
          attribute :icon_100, Schema::Types::Coercible::String.optional
          # @return [String] URL of the app icon with 200 px in width
          attribute :icon_200, Schema::Types::Coercible::String.optional
          # @return [String] URL of the app icon with 75 px in width
          attribute :icon_75, Schema::Types::Coercible::String.optional
          # @return [String] URL of the app icon with 50 px in width
          attribute :icon_50, Schema::Types::Coercible::String.optional
          # @return [String] URL of the app icon with 16 px in width
          attribute :icon_16, Schema::Types::Coercible::String.optional
          # @return [String] URL of the app banner with 186 px in width
          attribute :banner_186, Schema::Types::Coercible::String.optional
          # @return [String] URL of the app banner with 896 px in width
          attribute :banner_896, Schema::Types::Coercible::String.optional
          # @return [String] Application type
          attribute :type, Schema::Types::Coercible::String
          # @return [String] Application section name
          attribute :section, Schema::Types::Coercible::String.optional
          # @return [String] Application author's URL
          attribute :author_url, Schema::Types::Coercible::String.optional
          # @return [Integer] Application author's ID
          attribute :author_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Official community's ID
          attribute :author_group, Schema::Types::Coercible::Int.optional
          # @return [Integer] Members number
          attribute :members_count, Schema::Types::Coercible::Int.optional
          # @return [Integer] Date when the application has been published in Unixtime
          attribute :published_date, Schema::Types::Coercible::Int.optional
          # @return [Integer] Catalog position
          attribute :catalog_position, Schema::Types::Coercible::Int.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :screenshots, Schema::Types::Coercible::Array.member(Model::Photos::Photo).optional
          # @return [Integer] Information whether the application is multilanguage
          attribute :international, Schema::Types::Coercible::Int.optional
          # @return [Integer] Leaderboard type
          attribute :leaderboard_type, Schema::Types::Coercible::Int.optional
          # @return [Integer] Genre ID
          attribute :genre_id, Schema::Types::Coercible::Int.optional
          # @return [String] Genre name
          attribute :genre, Schema::Types::Coercible::String.optional
          # @return [Integer] Application ID in store
          attribute :platform_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Information whther application is in mobile catalog
          attribute :is_in_catalog, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
