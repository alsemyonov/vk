# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class LastActivity < Vk::Schema::Object
        # @return [Integer] Information whether user is online
        attribute :online, API::Types::Coercible::Int
        # @return [Integer] Time when user was online in Unixtime
        attribute :time, API::Types::Coercible::Int
      end
    end
  end
end
