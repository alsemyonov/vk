# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Friends
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class FriendsList < Vk::Schema::Model
          # @return [String] List title
          attribute :name, Schema::Types::Coercible::String
          # @return [Integer] List ID
          attribute :id, Schema::Types::Coercible::Int
        end
      end
    end
  end
end
