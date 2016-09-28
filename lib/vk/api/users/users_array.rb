# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Users < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class UsersArray < Vk::Schema::Object
        # @return [Integer] Users number
        attribute :count, API::Types::Coercible::Int
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :items, API::Types::Coercible::Array
      end
    end
  end
end
