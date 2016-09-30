# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Base < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class RequestParam < Vk::Schema::Object
        # @return [String] Parameter name
        attribute :key, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Parameter value
        attribute :value, API::Types::Coercible::String.optional.default(nil)
      end
    end
  end
end
