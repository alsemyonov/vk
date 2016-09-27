# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Users
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class LastSeen < Vk::Schema::Model
          # @return [Integer] Last visit date (in Unix time)
          attribute :time, Schema::Types::Coercible::Int.optional
          # @return [Integer] Type of the platform that used for the last authorization
          attribute :platform, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
