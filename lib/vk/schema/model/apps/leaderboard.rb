# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Apps
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Leaderboard < Vk::Schema::Model
          # @return [Integer] Score number
          attribute :score, Schema::Types::Coercible::Int.optional
          # @return [Integer] Level
          attribute :level, Schema::Types::Coercible::Int.optional
          # @return [Integer] Points number
          attribute :points, Schema::Types::Coercible::Int.optional
          # @return [Integer] User ID
          attribute :user_id, Schema::Types::Coercible::Int
        end
      end
    end
  end
end
