# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Market
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Section < Vk::Schema::Model
          # @return [Integer] Section ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [String] Section name
          attribute :name, Schema::Types::Coercible::String
        end
      end
    end
  end
end
