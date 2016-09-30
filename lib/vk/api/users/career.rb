# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Users < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Career < Vk::Schema::Object
        # @return [Integer] Community ID
        attribute :group_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Country ID
        attribute :country_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] City ID
        attribute :city_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] From year
        attribute :from, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Till year
        attribute :until, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Position
        attribute :position, API::Types::Coercible::String.optional.default(nil)
      end
    end
  end
end
