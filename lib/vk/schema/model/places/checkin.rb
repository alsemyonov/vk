# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Places
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Checkin < Vk::Schema::Model
          # @return [Integer] Checkin ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [Integer] User ID
          attribute :user_id, Schema::Types::Coercible::Int
          # @return [Integer] Date when the checkin has been added in Unixtime
          attribute :date, Schema::Types::Coercible::Int
          # @return [Number] Place latitude
          attribute :latitude, Schema::Types::Coercible::Int.optional
          # @return [Number] Place longitude
          attribute :longitude, Schema::Types::Coercible::Int.optional
          # @return [Integer] Place ID
          attribute :place_id, Schema::Types::Coercible::Int.optional
          # @return [String] Comment text
          attribute :text, Schema::Types::Coercible::String.optional
          # @return [Integer] Distance to the place
          attribute :distance, Schema::Types::Coercible::Int.optional
          # @return [String] Place title
          attribute :place_title, Schema::Types::Coercible::String.optional
          # @return [Integer] Country ID
          attribute :place_country, Schema::Types::Coercible::Int.optional
          # @return [Integer] City ID
          attribute :place_city, Schema::Types::Coercible::Int.optional
          # @return [String] Place type
          attribute :place_type, Schema::Types::Coercible::String.optional
          # @return [String] URL of the place's icon
          attribute :place_icon, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
