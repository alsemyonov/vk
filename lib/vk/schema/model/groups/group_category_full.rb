# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Groups
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class GroupCategoryFull < Vk::Schema::Model
          # @return [Integer] Category ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [String] Category name
          attribute :name, Schema::Types::Coercible::String
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :subcategories, Schema::Types::Coercible::Array.member(Model::Groups::GroupCategory).optional
          # @return [Integer] Pages number
          attribute :page_count, Schema::Types::Coercible::Int
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :page_previews, Schema::Types::Coercible::Array.member(Model::Groups::Group)
        end
      end
    end
  end
end
