# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class LongpollParams < Vk::Schema::Object
        # @return [String] Key
        attribute :key, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Server URL
        attribute :server, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Timestamp
        attribute :ts, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
