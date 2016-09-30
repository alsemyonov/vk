# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class CatElement < Vk::Schema::Object
        # @return [Integer] Element ID
        attribute :id, API::Types::Coercible::Int
        # @return [Integer] Element owner's ID
        attribute :owner_id, API::Types::Coercible::Int
        # @return [String] Element title
        attribute :title, API::Types::Coercible::String
        # @return [String] Element type
        attribute :type, API::Types::Coercible::String.enum("video", "album")
        # @return [String] Element description
        attribute :description, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Duration in seconds
        attribute :duration, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] URL of the preview image with 130 px in width
        attribute :photo_130, API::Types::Coercible::String.optional.default(nil)
        # @return [String] URL of the preview image with 160 px in width
        attribute :photo_160, API::Types::Coercible::String.optional.default(nil)
        # @return [String] URL of the preview image with 320 px in width
        attribute :photo_320, API::Types::Coercible::String.optional.default(nil)
        # @return [String] URL of the preview image with 640 px in width
        attribute :photo_640, API::Types::Coercible::String.optional.default(nil)
        # @return [String] URL of the preview image with 800 px in width
        attribute :photo_800, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Date when the element has been created
        attribute :date, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Views number
        attribute :views, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Comments number
        attribute :comments, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Information whether current user can add the video
        attribute :can_add, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Information whether current user can edit the video
        attribute :can_edit, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Information whether the video is private
        attribute :is_private, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Videos number (for album)
        attribute :count, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Date of last update (for album) in Unixtime
        attribute :updated_time, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
