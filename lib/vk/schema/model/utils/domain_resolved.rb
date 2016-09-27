# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Utils
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class DomainResolved < Vk::Schema::Model
          # @return [String] Object type
          attribute :type, Schema::Types::Coercible::String.optional
          # @return [Integer] Object ID
          attribute :object_id, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
