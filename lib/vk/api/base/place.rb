# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Base < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Place < Vk::Schema::Object
        # @return [Integer] Place ID
        attribute :id, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Place title
        attribute :title, API::Types::Coercible::String.optional.default(nil)
        # @return [Number] Place latitude
        attribute :latitude, API::Types::Coercible::Int.optional.default(nil)
        # @return [Number] Place longitude
        attribute :longitude, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Date of the place creation in Unixtime
        attribute :created, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] URL of the place's icon
        attribute :icon, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Checkins number
        attribute :checkins, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Place type
        attribute :type, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Country ID
        attribute :country, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] City ID
        attribute :city, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Place address
        attribute :address, API::Types::Coercible::String.optional.default(nil)
      end
    end
  end
end
