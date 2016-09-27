# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Video
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class CatElement < Vk::Schema::Model
          # @return [Integer] Element ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [Integer] Element owner's ID
          attribute :owner_id, Schema::Types::Coercible::Int
          # @return [String] Element title
          attribute :title, Schema::Types::Coercible::String
          # @return [String] Element type
          attribute :type, Schema::Types::Coercible::String
          # @return [String] Element description
          attribute :description, Schema::Types::Coercible::String.optional
          # @return [Integer] Duration in seconds
          attribute :duration, Schema::Types::Coercible::Int.optional
          # @return [String] URL of the preview image with 130 px in width
          attribute :photo_130, Schema::Types::Coercible::String.optional
          # @return [String] URL of the preview image with 160 px in width
          attribute :photo_160, Schema::Types::Coercible::String.optional
          # @return [String] URL of the preview image with 320 px in width
          attribute :photo_320, Schema::Types::Coercible::String.optional
          # @return [String] URL of the preview image with 640 px in width
          attribute :photo_640, Schema::Types::Coercible::String.optional
          # @return [String] URL of the preview image with 800 px in width
          attribute :photo_800, Schema::Types::Coercible::String.optional
          # @return [Integer] Date when the element has been created
          attribute :date, Schema::Types::Coercible::Int.optional
          # @return [Integer] Views number
          attribute :views, Schema::Types::Coercible::Int.optional
          # @return [Integer] Comments number
          attribute :comments, Schema::Types::Coercible::Int.optional
          # @return [Integer] Information whether current user can add the video
          attribute :can_add, Schema::Types::Coercible::Int.optional
          # @return [Integer] Information whether current user can edit the video
          attribute :can_edit, Schema::Types::Coercible::Int.optional
          # @return [Integer] Information whether the video is private
          attribute :is_private, Schema::Types::Coercible::Int.optional
          # @return [Integer] Videos number (for album)
          attribute :count, Schema::Types::Coercible::Int.optional
          # @return [Integer] Date of last update (for album) in Unixtime
          attribute :updated_time, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
