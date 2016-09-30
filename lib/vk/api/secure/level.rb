# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Secure < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Level < Vk::Schema::Object
        # @return [Integer] User ID
        attribute :uid, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Level
        attribute :level, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
