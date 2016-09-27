# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Ads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class FloodStats < Vk::Schema::Model
          # @return [Integer] Requests left
          attribute :left, Schema::Types::Coercible::Int
          # @return [Integer] Time to refresh in seconds
          attribute :refresh, Schema::Types::Coercible::Int
        end
      end
    end
  end
end
