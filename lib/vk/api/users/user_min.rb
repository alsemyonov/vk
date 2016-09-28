# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Users < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class UserMin < Vk::Schema::Object
        # @return [Integer] User ID
        attribute :id, API::Types::Coercible::Int
        # @return [String] User first name
        attribute :first_name, API::Types::Coercible::String
        # @return [String] User last name
        attribute :last_name, API::Types::Coercible::String
        # @return [String] Returns if a profile is deleted or blocked
        attribute :deactivated, API::Types::Coercible::String.optional
        # @return [Integer] Returns if a profile is hidden.
        attribute :hidden, API::Types::Coercible::Int.optional
      end
    end
  end
end
