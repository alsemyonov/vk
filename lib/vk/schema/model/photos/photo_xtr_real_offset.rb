# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Photos
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class PhotoXtrRealOffset < Vk::Schema::Model
          # @return [Integer] Photo ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [Integer] Album ID
          attribute :album_id, Schema::Types::Coercible::Int
          # @return [Integer] Photo owner's ID
          attribute :owner_id, Schema::Types::Coercible::Int
          # @return [Integer] ID of the user who have uploaded the photo
          attribute :user_id, Schema::Types::Coercible::Int.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :sizes, Schema::Types::Coercible::Array.member(Model::Photos::PhotoSizes).optional
          # @return [String] URL of image with 75 px width
          attribute :photo_75, Schema::Types::Coercible::String.optional
          # @return [String] URL of image with 130 px width
          attribute :photo_130, Schema::Types::Coercible::String.optional
          # @return [String] URL of image with 604 px width
          attribute :photo_604, Schema::Types::Coercible::String.optional
          # @return [String] URL of image with 807 px width
          attribute :photo_807, Schema::Types::Coercible::String.optional
          # @return [String] URL of image with 1280 px width
          attribute :photo_1280, Schema::Types::Coercible::String.optional
          # @return [Integer] Post ID
          attribute :post_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Original photo width
          attribute :width, Schema::Types::Coercible::Int.optional
          # @return [Integer] Original photo height
          attribute :height, Schema::Types::Coercible::Int.optional
          # @return [String] Photo caption
          attribute :text, Schema::Types::Coercible::String.optional
          # @return [Integer] Date when uploaded
          attribute :date, Schema::Types::Coercible::Int
          # @return [Number] Latitude
          attribute :lat, Schema::Types::Coercible::Int.optional
          # @return [Number] Longitude
          attribute :long, Schema::Types::Coercible::Int.optional
          # @return [String] Access key for the photo
          attribute :access_key, Schema::Types::Coercible::String.optional
          # @return [BasePropertyExists] Returns if the photo is hidden above the wall
          attribute :hidden, Schema::Types::BasePropertyExists.optional
          # @return [Integer] Real position of the photo
          attribute :real_offset, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
