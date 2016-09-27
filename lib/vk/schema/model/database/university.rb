# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Database
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class University < Vk::Schema::Model
          # @return [Integer] University ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [String] University title
          attribute :title, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
