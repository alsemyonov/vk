# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Users < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class LastSeen < Vk::Schema::Object
        # @return [Integer] Last visit date (in Unix time)
        attribute :time, API::Types::Coercible::Int.optional
        # @return [Integer] Type of the platform that used for the last authorization
        attribute :platform, API::Types::Coercible::Int.optional
      end
    end
  end
end
