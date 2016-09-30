# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Leads < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Complete < Vk::Schema::Object
        # @return [Integer] Offer limit
        attribute :limit, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Amount of spent votes
        attribute :spent, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Offer cost
        attribute :cost, API::Types::Coercible::Int.optional.default(nil)
        # @return [API::Base::BoolInt] Information whether test mode is enabled
        attribute :test_mode, API::Base::BoolInt.optional.default(nil)
        # @return [API::Base::OkResponse] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :success, API::Base::OkResponse.optional.default(nil)
      end
    end
  end
end
