# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Apps < Vk::Schema::Namespace
      module Methods
        # Returns a list of applications (apps) available to users in the App Catalog.
        class GetCatalog < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'apps.getCatalog'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :sort Sort order:; 'popular_today' — popular for one day (default); 'visitors' — by visitors number ; 'create_date' — by creation date; 'growth_rate' — by growth rate; 'popular_week' — popular for one week
          #   @option arguments [Integer] :offset Offset required to return a specific subset of apps.
          #   @option arguments [Integer] :count Number of apps to return.
          #   @option arguments [String] :platform @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Boolean] :extended '1' — to return additional fields 'screenshots', 'MAU', 'catalog_position', and 'international'. If set, 'count' must be less than or equal to '100'. ; '0' — not to return additional fields (default).
          #   @option arguments [Boolean] :return_friends @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Array] :fields @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [String] :name_case @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [String] :q Search query string.
          #   @option arguments [Integer] :genre_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [String] :filter 'installed' — to return list of installed apps (only for mobile platform).
          #   @return [Apps::Methods::GetCatalog]

          # @!group Arguments

          # @return [String] Sort order:; 'popular_today' — popular for one day (default); 'visitors' — by visitors number ; 'create_date' — by creation date; 'growth_rate' — by growth rate; 'popular_week' — popular for one week
          attribute :sort, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] Offset required to return a specific subset of apps.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of apps to return.
          attribute :count, API::Types::Coercible::Int.default(100)
          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :platform, API::Types::Coercible::String.optional.default(nil)
          # @return [Boolean] '1' — to return additional fields 'screenshots', 'MAU', 'catalog_position', and 'international'. If set, 'count' must be less than or equal to '100'. ; '0' — not to return additional fields (default).
          attribute :extended, API::Types::Form::Bool.optional.default(nil)
          # @return [Boolean] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :return_friends, API::Types::Form::Bool.optional.default(nil)
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :fields, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :name_case, API::Types::Coercible::String.optional.default(nil)
          # @return [String] Search query string.
          attribute :q, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :genre_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] 'installed' — to return list of installed apps (only for mobile platform).
          attribute :filter, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
