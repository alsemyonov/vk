# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class UserXtrRole < API::Users::UserFull
        # @return [API::Groups::RoleOptions] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :role, API::Groups::RoleOptions.optional.default(nil)
      end
    end
  end
end
