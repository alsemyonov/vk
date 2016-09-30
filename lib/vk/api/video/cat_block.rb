# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class CatBlock < Vk::Schema::Object
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :items, API::Types::Coercible::Array.member(API::Video::CatElement)
        # @return [String] New value for _from_ parameter
        attribute :next, API::Types::Coercible::String
        # @return [String] Block name
        attribute :name, API::Types::Coercible::String
        # @return [Integer] Block ID
        attribute :id, API::Types::Coercible::Int
        # @return [String] Type of view
        attribute :view, API::Types::Coercible::String.enum("horizontal", "horizontal_compact", "vertical", "vertical_compact")
        # @return [API::Base::BoolInt] Information whether the block can be hidden
        attribute :can_hide, API::Base::BoolInt
        # @return [String] Block type
        attribute :type, API::Types::Coercible::String.enum("channel", "category").optional.default(nil)
      end
    end
  end
end
