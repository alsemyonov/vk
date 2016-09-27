# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Stats
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class WallpostStat < Vk::Schema::Model
          # @return [Integer] Subscribers reach
          attribute :reach_subscribers, Schema::Types::Coercible::Int.optional
          # @return [Integer] Total reach
          attribute :reach_total, Schema::Types::Coercible::Int.optional
          # @return [Integer] LInk clickthrough
          attribute :links, Schema::Types::Coercible::Int.optional
          # @return [Integer] Clickthrough  to  community
          attribute :to_group, Schema::Types::Coercible::Int.optional
          # @return [Integer] People have joined the group
          attribute :join_group, Schema::Types::Coercible::Int.optional
          # @return [Integer] Reports number
          attribute :report, Schema::Types::Coercible::Int.optional
          # @return [Integer] Hidings number
          attribute :hide, Schema::Types::Coercible::Int.optional
          # @return [Integer] Unsubscribed members
          attribute :unsubscribe, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
