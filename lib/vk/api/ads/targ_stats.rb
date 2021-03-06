# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class TargStats < Vk::Schema::Object
        # @return [Integer] Audience
        attribute :audience_count, API::Types::Coercible::Int
        # @return [Number] Recommended CPC value
        attribute :recommended_cpc, API::Types::Coercible::Int.optional.default(nil)
        # @return [Number] Recommended CPM value
        attribute :recommended_cpm, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
