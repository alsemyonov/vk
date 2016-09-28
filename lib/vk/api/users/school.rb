# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Users < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class School < Vk::Schema::Object
        # @return [String] School ID
        attribute :id, API::Types::Coercible::String.optional
        # @return [Integer] Country ID
        attribute :country, API::Types::Coercible::Int.optional
        # @return [Integer] City ID
        attribute :city, API::Types::Coercible::Int.optional
        # @return [String] School name
        attribute :name, API::Types::Coercible::String.optional
        # @return [Integer] Year the user started to study
        attribute :year_from, API::Types::Coercible::Int.optional
        # @return [Integer] Year the user finished to study
        attribute :year_to, API::Types::Coercible::Int.optional
        # @return [Integer] Graduation year
        attribute :year_graduated, API::Types::Coercible::Int.optional
        # @return [String] School class letter
        attribute :class, API::Types::Coercible::String.optional
        # @return [Integer] School type ID
        attribute :type, API::Types::Coercible::Int.optional
        # @return [String] School type name
        attribute :type_str, API::Types::Coercible::String.optional
      end
    end
  end
end
