# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Friends < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Requests < Vk::Schema::Object
        # @return [Integer] User ID
        attribute :user_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] ID of the user by whom friend has been suggested
        attribute :from, API::Types::Coercible::String.optional.default(nil)
        # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :mutual, API::Types::Coercible::Hash.optional.default(nil)
      end
    end
  end
end
