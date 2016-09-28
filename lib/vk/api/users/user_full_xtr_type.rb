# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Users < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class UserFullXtrType < API::Users::UserFull
        # @return [String] Object type
        attribute :type, API::Types::Coercible::String.optional
      end
    end
  end
end
