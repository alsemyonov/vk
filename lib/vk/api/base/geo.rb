# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Base < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Geo < Vk::Schema::Object
        # @return [String] Place type
        attribute :type, API::Types::Coercible::String.optional.default(nil)
        # @return [String] String with coordinates
        attribute :coordinates, API::Types::Coercible::String.optional.default(nil)
        # @return [API::Base::Place] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :place, Dry::Types[API::Base::Place].optional.default(nil)
        # @return [Integer] Information whether a map is showed
        attribute :showmap, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
