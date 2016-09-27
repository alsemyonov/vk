# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Users
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Military < Vk::Schema::Model
          # @return [String] Unit name
          attribute :unit, Schema::Types::Coercible::String.optional
          # @return [Integer] Unit ID
          attribute :unit_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Country ID
          attribute :country_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] From year
          attribute :from, Schema::Types::Coercible::Int.optional
          # @return [Integer] Till year
          attribute :until, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
