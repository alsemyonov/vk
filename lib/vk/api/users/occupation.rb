# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Users < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Occupation < Vk::Schema::Object
        # @return [String] Type of occupation
        attribute :type, API::Types::Coercible::String.optional
        # @return [Integer] ID of school, university, company group
        attribute :id, API::Types::Coercible::Int.optional
        # @return [String] Name of occupation
        attribute :name, API::Types::Coercible::String.optional
      end
    end
  end
end
