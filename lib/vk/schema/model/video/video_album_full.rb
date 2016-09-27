# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Video
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class VideoAlbumFull < Vk::Schema::Model
          # @return [Integer] Album ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [Integer] Album owner's ID
          attribute :owner_id, Schema::Types::Coercible::Int
          # @return [String] Album title
          attribute :title, Schema::Types::Coercible::String
          # @return [Integer] Total number of videos in album
          attribute :count, Schema::Types::Coercible::Int
          # @return [String] URL of the preview image with 160px in width
          attribute :photo_160, Schema::Types::Coercible::String.optional
          # @return [String] URL of the preview image with 320px in width
          attribute :photo_320, Schema::Types::Coercible::String.optional
          # @return [Integer] Date when the album has been updated last time in Unixtime
          attribute :updated_time, Schema::Types::Coercible::Int
          # @return [Integer] Information whether album is system
          attribute :is_system, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
