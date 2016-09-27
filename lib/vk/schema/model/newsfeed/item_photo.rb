# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Newsfeed
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class ItemPhoto < Vk::Schema::Model
          # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :photos, Schema::Types::Coercible::Hash.optional
          # @return [Integer] Post ID
          attribute :post_id, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
