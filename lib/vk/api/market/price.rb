# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Market < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Price < Vk::Schema::Object
        # @return [String] Amount
        attribute :amount, API::Types::Coercible::String.optional
        # @return [API::Market::Currency] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :currency, Dry::Types[API::Market::Currency].optional
        # @return [String] Text
        attribute :text, API::Types::Coercible::String.optional
      end
    end
  end
end
