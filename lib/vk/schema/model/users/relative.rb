# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Users
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Relative < Vk::Schema::Model
          # @return [Integer] Relative ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [String] Relative type
          attribute :type, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
