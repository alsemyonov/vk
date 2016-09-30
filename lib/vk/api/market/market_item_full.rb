# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Market < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class MarketItemFull < Vk::Schema::Object
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :photos, API::Types::Coercible::Array.member(API::Photos::Photo).optional.default(nil)
        # @return [API::Base::BoolInt] Information whether current use can comment the item
        attribute :can_comment, API::Base::BoolInt.optional.default(nil)
        # @return [API::Base::BoolInt] Information whether current use can repost the item
        attribute :can_repost, API::Base::BoolInt.optional.default(nil)
        # @return [API::Base::Likes] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :likes, Dry::Types[API::Base::Likes].optional.default(nil)
        # @return [Integer] Views number
        attribute :views_count, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
