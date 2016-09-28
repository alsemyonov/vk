# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class GroupsArray < Vk::Schema::Object
        # @return [Integer] Communities number
        attribute :count, API::Types::Coercible::Int
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :items, API::Types::Coercible::Array
      end
    end
  end
end
