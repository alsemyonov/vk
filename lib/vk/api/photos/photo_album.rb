# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class PhotoAlbum < Vk::Schema::Object
        # @return [Integer] Photo album ID
        attribute :id, API::Types::Coercible::Int
        # @return [API::Photos::Photo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :thumb, Dry::Types[API::Photos::Photo].optional
        # @return [Integer] Album owner's ID
        attribute :owner_id, API::Types::Coercible::Int
        # @return [String] Photo album title
        attribute :title, API::Types::Coercible::String
        # @return [String] Photo album description
        attribute :description, API::Types::Coercible::String.optional
        # @return [Integer] Date when the album has been created in Unixtime
        attribute :created, API::Types::Coercible::Int
        # @return [Integer] Date when the album has been updated last time in Unixtime
        attribute :updated, API::Types::Coercible::Int
        # @return [Integer] Photos number
        attribute :size, API::Types::Coercible::Int
      end
    end
  end
end
