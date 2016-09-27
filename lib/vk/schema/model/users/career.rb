# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Users
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Career < Vk::Schema::Model
          # @return [Integer] Community ID
          attribute :group_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Country ID
          attribute :country_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] City ID
          attribute :city_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] From year
          attribute :from, Schema::Types::Coercible::Int.optional
          # @return [Integer] Till year
          attribute :until, Schema::Types::Coercible::Int.optional
          # @return [String] Position
          attribute :position, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
