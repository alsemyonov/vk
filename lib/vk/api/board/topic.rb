# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Board < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Topic < Vk::Schema::Object
        # @return [Integer] Topic ID
        attribute :id, API::Types::Coercible::Int.optional
        # @return [String] Topic title
        attribute :title, API::Types::Coercible::String.optional
        # @return [Integer] Date when the topic has been created in Unixtime
        attribute :created, API::Types::Coercible::Int.optional
        # @return [Integer] Creator ID
        attribute :created_by, API::Types::Coercible::Int.optional
        # @return [Integer] Date when the topic has been updated in Unixtime
        attribute :updated, API::Types::Coercible::Int.optional
        # @return [Integer] ID of user who updated the topic
        attribute :updated_by, API::Types::Coercible::Int.optional
        # @return [API::Base::BoolInt] Information whether the topic is closed
        attribute :is_closed, API::Base::BoolInt.optional
        # @return [API::Base::BoolInt] Information whether the topic is fixed
        attribute :is_fixed, API::Base::BoolInt.optional
        # @return [Integer] Comments number
        attribute :comments, API::Types::Coercible::Int.optional
      end
    end
  end
end
