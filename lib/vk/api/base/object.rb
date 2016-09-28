# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Base < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Object < Vk::Schema::Object
        # @return [Integer] Object ID
        attribute :id, API::Types::Coercible::Int
        # @return [String] Object title
        attribute :title, API::Types::Coercible::String
      end
    end
  end
end
