# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Users < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class UserXtrCounters < API::Users::UserFull
        # @return [API::Users::UserCounters] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :counters, Dry::Types[API::Users::UserCounters].optional.default(nil)
      end
    end
  end
end
