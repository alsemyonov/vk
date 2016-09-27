# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Base
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Object < Vk::Schema::Model
          # @return [Integer] Object ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [String] Object title
          attribute :title, Schema::Types::Coercible::String
        end
      end
    end
  end
end
