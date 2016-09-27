# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Messages
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class LastActivity < Vk::Schema::Model
          # @return [Integer] Information whether user is online
          attribute :online, Schema::Types::Coercible::Int
          # @return [Integer] Time when user was online in Unixtime
          attribute :time, Schema::Types::Coercible::Int
        end
      end
    end
  end
end
