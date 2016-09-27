# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Video
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class CatBlock < Vk::Schema::Model
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :items, Schema::Types::Coercible::Array.member(Model::Video::CatElement)
          # @return [String] New value for _from_ parameter
          attribute :next, Schema::Types::Coercible::String
          # @return [String] Block name
          attribute :name, Schema::Types::Coercible::String
          # @return [Integer] Block ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [String] Type of view
          attribute :view, Schema::Types::Coercible::String
          # @return [BaseBoolInt] Information whether the block can be hidden
          attribute :can_hide, Schema::Types::BaseBoolInt
          # @return [String] Block type
          attribute :type, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
