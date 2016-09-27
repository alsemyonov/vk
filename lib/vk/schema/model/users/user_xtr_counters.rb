# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Users
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class UserXtrCounters < Model::Users::UserFull
          # @return [UserCounters] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :counters, Dry::Types[Model::Users::UserCounters].optional
        end
      end
    end
  end
end
