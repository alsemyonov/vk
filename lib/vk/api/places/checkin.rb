# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Places < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Checkin < Vk::Schema::Object
        # @return [Integer] Checkin ID
        attribute :id, API::Types::Coercible::Int
        # @return [Integer] User ID
        attribute :user_id, API::Types::Coercible::Int
        # @return [Integer] Date when the checkin has been added in Unixtime
        attribute :date, API::Types::Coercible::Int
        # @return [Number] Place latitude
        attribute :latitude, API::Types::Coercible::Int.optional.default(nil)
        # @return [Number] Place longitude
        attribute :longitude, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Place ID
        attribute :place_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Comment text
        attribute :text, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Distance to the place
        attribute :distance, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Place title
        attribute :place_title, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Country ID
        attribute :place_country, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] City ID
        attribute :place_city, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Place type
        attribute :place_type, API::Types::Coercible::String.optional.default(nil)
        # @return [String] URL of the place's icon
        attribute :place_icon, API::Types::Coercible::String.optional.default(nil)
      end
    end
  end
end
