# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Users < Vk::Schema::Object
        # @return [Integer] User ID
        attribute :user_id, API::Types::Coercible::Int
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :accesses, API::Types::Coercible::Array.member(API::Ads::Accesses)
      end
    end
  end
end
