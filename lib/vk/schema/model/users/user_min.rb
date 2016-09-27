# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Users
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class UserMin < Vk::Schema::Model
          # @return [Integer] User ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [String] User first name
          attribute :first_name, Schema::Types::Coercible::String
          # @return [String] User last name
          attribute :last_name, Schema::Types::Coercible::String
          # @return [String] Returns if a profile is deleted or blocked
          attribute :deactivated, Schema::Types::Coercible::String.optional
          # @return [Integer] Returns if a profile is hidden.
          attribute :hidden, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
