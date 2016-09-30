# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class TargSettings < Vk::Schema::Object
        # @return [Integer] Ad ID
        attribute :id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Campaign ID
        attribute :campaign_id, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
