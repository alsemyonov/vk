# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Base < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Error < Vk::Schema::Object
        # @return [Integer] Error code
        attribute :error_code, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Error message
        attribute :error_msg, API::Types::Coercible::String.optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :request_params, API::Types::Coercible::Array.member(API::Base::RequestParam).optional.default(nil)
      end
    end
  end
end
