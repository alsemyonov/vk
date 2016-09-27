# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Users
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Personal < Vk::Schema::Model
          # @return [Integer] User's political views
          attribute :political, Schema::Types::Coercible::Int.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :langs, Schema::Types::Coercible::Array.optional
          # @return [String] User's religion
          attribute :religion, Schema::Types::Coercible::String.optional
          # @return [String] User's inspired by
          attribute :inspired_by, Schema::Types::Coercible::String.optional
          # @return [Integer] User's personal priority in people
          attribute :people_main, Schema::Types::Coercible::Int.optional
          # @return [Integer] User's personal priority in life
          attribute :life_main, Schema::Types::Coercible::Int.optional
          # @return [Integer] User's views on smoking
          attribute :smoking, Schema::Types::Coercible::Int.optional
          # @return [Integer] User's views on alcohol
          attribute :alcohol, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
