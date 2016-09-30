# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Users < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class UserXtrType < API::Users::User
        # @return [String] Object type
        attribute :type, API::Types::Coercible::String.enum("profile").optional.default(nil)
      end
    end
  end
end
