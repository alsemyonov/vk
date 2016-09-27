# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Leads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Lead < Vk::Schema::Model
          # @return [Integer] Lead limit
          attribute :limit, Schema::Types::Coercible::Int.optional
          # @return [Integer] Amount of spent votes
          attribute :spent, Schema::Types::Coercible::Int.optional
          # @return [Integer] Offer cost
          attribute :cost, Schema::Types::Coercible::Int.optional
          # @return [Integer] Impressions number
          attribute :impressions, Schema::Types::Coercible::Int.optional
          # @return [Integer] Started offers number
          attribute :started, Schema::Types::Coercible::Int.optional
          # @return [Integer] Completed offers number
          attribute :completed, Schema::Types::Coercible::Int.optional
          # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :days, Schema::Types::Coercible::Hash.optional
        end
      end
    end
  end
end
