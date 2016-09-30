# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class GroupCategoryFull < Vk::Schema::Object
        # @return [Integer] Category ID
        attribute :id, API::Types::Coercible::Int
        # @return [String] Category name
        attribute :name, API::Types::Coercible::String
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :subcategories, API::Types::Coercible::Array.member(API::Groups::GroupCategory).optional.default(nil)
        # @return [Integer] Pages number
        attribute :page_count, API::Types::Coercible::Int
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :page_previews, API::Types::Coercible::Array.member(API::Groups::Group)
      end
    end
  end
end
