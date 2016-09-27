# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Board
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Topic < Vk::Schema::Model
          # @return [Integer] Topic ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [String] Topic title
          attribute :title, Schema::Types::Coercible::String.optional
          # @return [Integer] Date when the topic has been created in Unixtime
          attribute :created, Schema::Types::Coercible::Int.optional
          # @return [Integer] Creator ID
          attribute :created_by, Schema::Types::Coercible::Int.optional
          # @return [Integer] Date when the topic has been updated in Unixtime
          attribute :updated, Schema::Types::Coercible::Int.optional
          # @return [Integer] ID of user who updated the topic
          attribute :updated_by, Schema::Types::Coercible::Int.optional
          # @return [BaseBoolInt] Information whether the topic is closed
          attribute :is_closed, Schema::Types::BaseBoolInt.optional
          # @return [BaseBoolInt] Information whether the topic is fixed
          attribute :is_fixed, Schema::Types::BaseBoolInt.optional
          # @return [Integer] Comments number
          attribute :comments, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
