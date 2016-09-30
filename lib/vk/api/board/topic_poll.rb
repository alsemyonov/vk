# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Board < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class TopicPoll < Vk::Schema::Object
        # @return [Integer] Poll ID
        attribute :poll_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Poll owner's ID
        attribute :owner_id, API::Types::Coercible::Int
        # @return [Integer] Date when poll has been created in Unixtime
        attribute :created, API::Types::Coercible::Int
        # @return [API::Base::BoolInt] Information whether the poll is closed
        attribute :is_closed, API::Base::BoolInt.optional.default(nil)
        # @return [String] Poll question
        attribute :question, API::Types::Coercible::String
        # @return [String] Votes number
        attribute :votes, API::Types::Coercible::String
        # @return [Integer] Current user's answer ID
        attribute :answer_id, API::Types::Coercible::Int
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :answers, API::Types::Coercible::Array.member(API::Types::Coercible::Hash)
      end
    end
  end
end
