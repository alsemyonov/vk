# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Apps < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Leaderboard < Vk::Schema::Object
        # @return [Integer] Score number
        attribute :score, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Level
        attribute :level, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Points number
        attribute :points, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] User ID
        attribute :user_id, API::Types::Coercible::Int
      end
    end
  end
end
