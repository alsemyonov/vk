# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Leads < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Lead < Vk::Schema::Object
        # @return [Integer] Lead limit
        attribute :limit, API::Types::Coercible::Int.optional
        # @return [Integer] Amount of spent votes
        attribute :spent, API::Types::Coercible::Int.optional
        # @return [Integer] Offer cost
        attribute :cost, API::Types::Coercible::Int.optional
        # @return [Integer] Impressions number
        attribute :impressions, API::Types::Coercible::Int.optional
        # @return [Integer] Started offers number
        attribute :started, API::Types::Coercible::Int.optional
        # @return [Integer] Completed offers number
        attribute :completed, API::Types::Coercible::Int.optional
        # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :days, API::Types::Coercible::Hash.optional
      end
    end
  end
end
