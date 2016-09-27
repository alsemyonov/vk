# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Market
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class MarketItemFull < Vk::Schema::Model
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :photos, Schema::Types::Coercible::Array.member(Model::Photos::Photo).optional
          # @return [BaseBoolInt] Information whether current use can comment the item
          attribute :can_comment, Schema::Types::BaseBoolInt.optional
          # @return [BaseBoolInt] Information whether current use can repost the item
          attribute :can_repost, Schema::Types::BaseBoolInt.optional
          # @return [Likes] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :likes, Dry::Types[Model::Base::Likes].optional
          # @return [Integer] Views number
          attribute :views_count, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
