# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class VideoAlbumFull < Vk::Schema::Object
        # @return [Integer] Album ID
        attribute :id, API::Types::Coercible::Int
        # @return [Integer] Album owner's ID
        attribute :owner_id, API::Types::Coercible::Int
        # @return [String] Album title
        attribute :title, API::Types::Coercible::String
        # @return [Integer] Total number of videos in album
        attribute :count, API::Types::Coercible::Int
        # @return [String] URL of the preview image with 160px in width
        attribute :photo_160, API::Types::Coercible::String.optional
        # @return [String] URL of the preview image with 320px in width
        attribute :photo_320, API::Types::Coercible::String.optional
        # @return [Integer] Date when the album has been updated last time in Unixtime
        attribute :updated_time, API::Types::Coercible::Int
        # @return [Integer] Information whether album is system
        attribute :is_system, API::Types::Coercible::Int.optional
      end
    end
  end
end
