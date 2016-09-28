# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Users < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Military < Vk::Schema::Object
        # @return [String] Unit name
        attribute :unit, API::Types::Coercible::String.optional
        # @return [Integer] Unit ID
        attribute :unit_id, API::Types::Coercible::Int.optional
        # @return [Integer] Country ID
        attribute :country_id, API::Types::Coercible::Int.optional
        # @return [Integer] From year
        attribute :from, API::Types::Coercible::Int.optional
        # @return [Integer] Till year
        attribute :until, API::Types::Coercible::Int.optional
      end
    end
  end
end
