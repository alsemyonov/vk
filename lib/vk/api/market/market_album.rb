# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Market < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class MarketAlbum < Vk::Schema::Object
        # @return [Integer] Market album ID
        attribute :id, API::Types::Coercible::Int
        # @return [Integer] Market album owner's ID
        attribute :owner_id, API::Types::Coercible::Int
        # @return [String] Market album title
        attribute :title, API::Types::Coercible::String
        # @return [Integer] Items number
        attribute :count, API::Types::Coercible::Int
        # @return [Integer] Date when album has been updated last time in Unixtime
        attribute :updated_time, API::Types::Coercible::Int
        # @return [API::Photos::Photo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :photo, Dry::Types[API::Photos::Photo].optional
      end
    end
  end
end
