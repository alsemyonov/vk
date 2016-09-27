# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Users
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class UserLim < Vk::Schema::Model
          # @return [Integer] User ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [String] URL of square photo of the user with 50 pixels in width
          attribute :photo, Schema::Types::Coercible::String.optional
          # @return [String] User name and last name
          attribute :name, Schema::Types::Coercible::String.optional
          # @return [String] User name in genitive declension
          attribute :name_gen, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
