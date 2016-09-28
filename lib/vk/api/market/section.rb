# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Market < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Section < Vk::Schema::Object
        # @return [Integer] Section ID
        attribute :id, API::Types::Coercible::Int
        # @return [String] Section name
        attribute :name, API::Types::Coercible::String
      end
    end
  end
end
