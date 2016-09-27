# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Places
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class PlaceFull < Vk::Schema::Model
          # @return [Integer] Place ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [String] Place title
          attribute :title, Schema::Types::Coercible::String.optional
          # @return [Number] Place latitude
          attribute :latitude, Schema::Types::Coercible::Int.optional
          # @return [Number] Place longitude
          attribute :longitude, Schema::Types::Coercible::Int.optional
          # @return [Integer] Date of the place creation in Unixtime
          attribute :created, Schema::Types::Coercible::Int.optional
          # @return [String] URL of the place's icon
          attribute :icon, Schema::Types::Coercible::String.optional
          # @return [Integer] Checkins number
          attribute :checkins, Schema::Types::Coercible::Int.optional
          # @return [String] Place type
          attribute :type, Schema::Types::Coercible::String.optional
          # @return [Integer] Country ID
          attribute :country, Schema::Types::Coercible::Int.optional
          # @return [Integer] City ID
          attribute :city, Schema::Types::Coercible::Int.optional
          # @return [String] Place address
          attribute :address, Schema::Types::Coercible::String.optional
          # @return [Integer] Distance to the place
          attribute :distance, Schema::Types::Coercible::Int.optional
          # @return [Integer] Community ID
          attribute :group_id, Schema::Types::Coercible::Int.optional
          # @return [String] URL of the community's photo
          attribute :group_photo, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
