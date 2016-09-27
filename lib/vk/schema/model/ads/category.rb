# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Ads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Category < Vk::Schema::Model
          # @return [Integer] Category ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [String] Category name
          attribute :name, Schema::Types::Coercible::String
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :subcategories, Schema::Types::Coercible::Array.optional
        end
      end
    end
  end
end
