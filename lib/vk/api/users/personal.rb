# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Users < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Personal < Vk::Schema::Object
        # @return [Integer] User's political views
        attribute :political, API::Types::Coercible::Int.optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :langs, API::Types::Coercible::Array.optional
        # @return [String] User's religion
        attribute :religion, API::Types::Coercible::String.optional
        # @return [String] User's inspired by
        attribute :inspired_by, API::Types::Coercible::String.optional
        # @return [Integer] User's personal priority in people
        attribute :people_main, API::Types::Coercible::Int.optional
        # @return [Integer] User's personal priority in life
        attribute :life_main, API::Types::Coercible::Int.optional
        # @return [Integer] User's views on smoking
        attribute :smoking, API::Types::Coercible::Int.optional
        # @return [Integer] User's views on alcohol
        attribute :alcohol, API::Types::Coercible::Int.optional
      end
    end
  end
end
