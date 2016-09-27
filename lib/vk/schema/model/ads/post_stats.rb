# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Ads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class PostStats < Model::Stats::WallpostStat
          # @return [Integer] Object ID
          attribute :ad_id, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
