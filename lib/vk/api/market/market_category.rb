# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Market < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class MarketCategory < Vk::Schema::Object
        # @return [Integer] Category ID
        attribute :id, API::Types::Coercible::Int
        # @return [String] Category name
        attribute :name, API::Types::Coercible::String
        # @return [API::Market::Section] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :section, Dry::Types[API::Market::Section]
      end
    end
  end
end
