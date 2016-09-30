# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Newsfeed < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class ItemPhoto < Vk::Schema::Object
        # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :photos, API::Types::Coercible::Hash.optional.default(nil)
        # @return [Integer] Post ID
        attribute :post_id, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
