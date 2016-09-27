# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Leads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Complete < Vk::Schema::Model
          # @return [Integer] Offer limit
          attribute :limit, Schema::Types::Coercible::Int.optional
          # @return [Integer] Amount of spent votes
          attribute :spent, Schema::Types::Coercible::Int.optional
          # @return [Integer] Offer cost
          attribute :cost, Schema::Types::Coercible::Int.optional
          # @return [BaseBoolInt] Information whether test mode is enabled
          attribute :test_mode, Schema::Types::BaseBoolInt.optional
          # @return [BaseOkResponse] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :success, Schema::Types::BaseOkResponse.optional
        end
      end
    end
  end
end
