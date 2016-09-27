# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Users
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class UsersArray < Vk::Schema::Model
          # @return [Integer] Users number
          attribute :count, Schema::Types::Coercible::Int
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :items, Schema::Types::Coercible::Array
        end
      end
    end
  end
end
