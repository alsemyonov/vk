# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Users
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Occupation < Vk::Schema::Model
          # @return [String] Type of occupation
          attribute :type, Schema::Types::Coercible::String.optional
          # @return [Integer] ID of school, university, company group
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [String] Name of occupation
          attribute :name, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
