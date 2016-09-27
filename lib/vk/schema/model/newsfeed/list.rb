# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Newsfeed
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class List < Vk::Schema::Model
          # @return [Integer] List ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [String] List title
          attribute :title, Schema::Types::Coercible::String
          # @return [BaseBoolInt] Information whether reposts hiding is enabled
          attribute :no_reposts, Schema::Types::BaseBoolInt.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :source_ids, Schema::Types::Coercible::Array.optional
        end
      end
    end
  end
end
