# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Stats < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class WallpostStat < Vk::Schema::Object
        # @return [Integer] Subscribers reach
        attribute :reach_subscribers, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Total reach
        attribute :reach_total, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] LInk clickthrough
        attribute :links, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Clickthrough  to  community
        attribute :to_group, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] People have joined the group
        attribute :join_group, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Reports number
        attribute :report, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Hidings number
        attribute :hide, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Unsubscribed members
        attribute :unsubscribe, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
