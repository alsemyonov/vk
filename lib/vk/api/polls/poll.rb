# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Polls < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Poll < Vk::Schema::Object
        # @return [Integer] Poll ID
        attribute :id, API::Types::Coercible::Int
        # @return [Integer] Poll owner's ID
        attribute :owner_id, API::Types::Coercible::Int
        # @return [Integer] Date when poll has been created in Unixtime
        attribute :created, API::Types::Coercible::Int
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
