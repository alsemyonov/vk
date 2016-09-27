# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Gifts
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Gift < Vk::Schema::Model
          # @return [Integer] Gift ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Gift sender ID
          attribute :from_id, Schema::Types::Coercible::Int.optional
          # @return [String] Comment text
          attribute :message, Schema::Types::Coercible::String.optional
          # @return [Integer] Date when gist has been sent in Unixtime
          attribute :date, Schema::Types::Coercible::Int.optional
          # @return [Layout] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :gift, Dry::Types[Model::Gifts::Layout].optional
          # @return [Integer] Gift privacy
          attribute :privacy, Schema::Types::Coercible::Int.optional
          # @return [String] Hash
          attribute :gift_hash, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
