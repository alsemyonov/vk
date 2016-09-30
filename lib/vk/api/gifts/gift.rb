# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Gifts < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Gift < Vk::Schema::Object
        # @return [Integer] Gift ID
        attribute :id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Gift sender ID
        attribute :from_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Comment text
        attribute :message, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Date when gist has been sent in Unixtime
        attribute :date, API::Types::Coercible::Int.optional.default(nil)
        # @return [API::Gifts::Layout] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :gift, Dry::Types[API::Gifts::Layout].optional.default(nil)
        # @return [Integer] Gift privacy
        attribute :privacy, API::Types::Coercible::Int.enum(0, 1, 2).optional.default(nil)
        # @return [String] Hash
        attribute :gift_hash, API::Types::Coercible::String.optional.default(nil)
      end
    end
  end
end
