# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class FloodStats < Vk::Schema::Object
        # @return [Integer] Requests left
        attribute :left, API::Types::Coercible::Int
        # @return [Integer] Time to refresh in seconds
        attribute :refresh, API::Types::Coercible::Int
      end
    end
  end
end
