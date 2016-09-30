# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class RejectReason < Vk::Schema::Object
        # @return [String] Comment text
        attribute :comment, API::Types::Coercible::String.optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :rules, API::Types::Coercible::Array.member(API::Ads::Rules).optional.default(nil)
      end
    end
  end
end
