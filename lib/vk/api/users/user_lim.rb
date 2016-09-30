# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Users < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class UserLim < Vk::Schema::Object
        # @return [Integer] User ID
        attribute :id, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] URL of square photo of the user with 50 pixels in width
        attribute :photo, API::Types::Coercible::String.optional.default(nil)
        # @return [String] User name and last name
        attribute :name, API::Types::Coercible::String.optional.default(nil)
        # @return [String] User name in genitive declension
        attribute :name_gen, API::Types::Coercible::String.optional.default(nil)
      end
    end
  end
end
