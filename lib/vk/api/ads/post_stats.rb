# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class PostStats < API::Stats::WallpostStat
        # @return [Integer] Object ID
        attribute :ad_id, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
