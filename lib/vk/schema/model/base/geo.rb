# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Base
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Geo < Vk::Schema::Model
          # @return [String] Place type
          attribute :type, Schema::Types::Coercible::String.optional
          # @return [String] String with coordinates
          attribute :coordinates, Schema::Types::Coercible::String.optional
          # @return [Place] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :place, Dry::Types[Model::Base::Place].optional
          # @return [Integer] Information whether a map is showed
          attribute :showmap, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
