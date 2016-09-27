# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Users
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class School < Vk::Schema::Model
          # @return [String] School ID
          attribute :id, Schema::Types::Coercible::String.optional
          # @return [Integer] Country ID
          attribute :country, Schema::Types::Coercible::Int.optional
          # @return [Integer] City ID
          attribute :city, Schema::Types::Coercible::Int.optional
          # @return [String] School name
          attribute :name, Schema::Types::Coercible::String.optional
          # @return [Integer] Year the user started to study
          attribute :year_from, Schema::Types::Coercible::Int.optional
          # @return [Integer] Year the user finished to study
          attribute :year_to, Schema::Types::Coercible::Int.optional
          # @return [Integer] Graduation year
          attribute :year_graduated, Schema::Types::Coercible::Int.optional
          # @return [String] School class letter
          attribute :class, Schema::Types::Coercible::String.optional
          # @return [Integer] School type ID
          attribute :type, Schema::Types::Coercible::Int.optional
          # @return [String] School type name
          attribute :type_str, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
