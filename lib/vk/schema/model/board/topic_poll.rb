# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Board
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class TopicPoll < Vk::Schema::Model
          # @return [Integer] Poll ID
          attribute :poll_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Poll owner's ID
          attribute :owner_id, Schema::Types::Coercible::Int
          # @return [Integer] Date when poll has been created in Unixtime
          attribute :created, Schema::Types::Coercible::Int
          # @return [BaseBoolInt] Information whether the poll is closed
          attribute :is_closed, Schema::Types::BaseBoolInt.optional
          # @return [String] Poll question
          attribute :question, Schema::Types::Coercible::String
          # @return [String] Votes number
          attribute :votes, Schema::Types::Coercible::String
          # @return [Integer] Current user's answer ID
          attribute :answer_id, Schema::Types::Coercible::Int
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :answers, Schema::Types::Coercible::Array
        end
      end
    end
  end
end
