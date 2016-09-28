# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Stats < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Period < Vk::Schema::Object
        # @return [String] Day (YYYY-MM-DD)
        attribute :day, API::Types::Coercible::String.optional
        # @return [Integer] Views number
        attribute :views, API::Types::Coercible::Int.optional
        # @return [Integer] Visitors number
        attribute :visitors, API::Types::Coercible::Int.optional
        # @return [Integer] Total reach
        attribute :reach, API::Types::Coercible::Int.optional
        # @return [Integer] Subscribers reach
        attribute :reach_subscribers, API::Types::Coercible::Int.optional
        # @return [Integer] Number of users subscribed
        attribute :subscribed, API::Types::Coercible::Int.optional
        # @return [Integer] Number of users unsubscribed
        attribute :unsubscribed, API::Types::Coercible::Int.optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :sex, API::Types::Coercible::Array.optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :age, API::Types::Coercible::Array.optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :sex_age, API::Types::Coercible::Array.optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :cities, API::Types::Coercible::Array.optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :countries, API::Types::Coercible::Array.optional
      end
    end
  end
end
