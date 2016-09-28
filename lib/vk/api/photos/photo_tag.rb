# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class PhotoTag < Vk::Schema::Object
        # @return [Integer] Tagged user ID
        attribute :user_id, API::Types::Coercible::Int
        # @return [Integer] Tag ID
        attribute :id, API::Types::Coercible::Int
        # @return [Integer] ID of the tag creator
        attribute :placer_id, API::Types::Coercible::Int
        # @return [String] Tag description
        attribute :tagged_name, API::Types::Coercible::String
        # @return [Integer] Date when tag has been added in Unixtime
        attribute :date, API::Types::Coercible::Int
        # @return [Number] Coordinate X of the left upper corner
        attribute :x, API::Types::Coercible::Int
        # @return [Number] Coordinate Y of the left upper corner
        attribute :y, API::Types::Coercible::Int
        # @return [Number] Coordinate X of the right lower corner
        attribute :x2, API::Types::Coercible::Int
        # @return [Number] Coordinate Y of the right lower corner
        attribute :y2, API::Types::Coercible::Int
        # @return [API::Base::BoolInt] Information whether the tag is reviewed
        attribute :viewed, API::Base::BoolInt
      end
    end
  end
end
