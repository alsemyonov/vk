# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Secure
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Level < Vk::Schema::Model
          # @return [Integer] User ID
          attribute :uid, Schema::Types::Coercible::Int.optional
          # @return [Integer] Level
          attribute :level, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
