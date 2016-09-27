# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Stats
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Period < Vk::Schema::Model
          # @return [String] Day (YYYY-MM-DD)
          attribute :day, Schema::Types::Coercible::String.optional
          # @return [Integer] Views number
          attribute :views, Schema::Types::Coercible::Int.optional
          # @return [Integer] Visitors number
          attribute :visitors, Schema::Types::Coercible::Int.optional
          # @return [Integer] Total reach
          attribute :reach, Schema::Types::Coercible::Int.optional
          # @return [Integer] Subscribers reach
          attribute :reach_subscribers, Schema::Types::Coercible::Int.optional
          # @return [Integer] Number of users subscribed
          attribute :subscribed, Schema::Types::Coercible::Int.optional
          # @return [Integer] Number of users unsubscribed
          attribute :unsubscribed, Schema::Types::Coercible::Int.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :sex, Schema::Types::Coercible::Array.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :age, Schema::Types::Coercible::Array.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :sex_age, Schema::Types::Coercible::Array.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :cities, Schema::Types::Coercible::Array.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :countries, Schema::Types::Coercible::Array.optional
        end
      end
    end
  end
end
