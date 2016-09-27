# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Market
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Price < Vk::Schema::Model
          # @return [String] Amount
          attribute :amount, Schema::Types::Coercible::String.optional
          # @return [Currency] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :currency, Dry::Types[Model::Market::Currency].optional
          # @return [String] Text
          attribute :text, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
