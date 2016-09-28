# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Market < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Currency < Vk::Schema::Object
        # @return [Integer] Currency ID
        attribute :id, API::Types::Coercible::Int
        # @return [String] Currency sign
        attribute :name, API::Types::Coercible::String
      end
    end
  end
end
