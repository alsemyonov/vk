# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Places
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Types < Vk::Schema::Model
          # @return [Integer] Place type ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Place type title
          attribute :title, Schema::Types::Coercible::Int.optional
          # @return [String] URL of the place's icon
          attribute :icon, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
