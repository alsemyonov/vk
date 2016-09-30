# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Users < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Relative < Vk::Schema::Object
        # @return [Integer] Relative ID
        attribute :id, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Relative type
        attribute :type, API::Types::Coercible::String.optional.default(nil)
      end
    end
  end
end
