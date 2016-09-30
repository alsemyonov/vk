# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class PhotoFullXtrRealOffset < Vk::Schema::Object
        # @return [Integer] Photo ID
        attribute :id, API::Types::Coercible::Int
        # @return [Integer] Album ID
        attribute :album_id, API::Types::Coercible::Int
        # @return [Integer] Photo owner's ID
        attribute :owner_id, API::Types::Coercible::Int
        # @return [Integer] ID of the user who have uploaded the photo
        attribute :user_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :sizes, API::Types::Coercible::Array.member(API::Photos::PhotoSizes).optional.default(nil)
        # @return [String] URL of image with 75 px width
        attribute :photo_75, API::Types::Coercible::String.optional.default(nil)
        # @return [String] URL of image with 130 px width
        attribute :photo_130, API::Types::Coercible::String.optional.default(nil)
        # @return [String] URL of image with 604 px width
        attribute :photo_604, API::Types::Coercible::String.optional.default(nil)
        # @return [String] URL of image with 807 px width
        attribute :photo_807, API::Types::Coercible::String.optional.default(nil)
        # @return [String] URL of image with 1280 px width
        attribute :photo_1280, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Post ID
        attribute :post_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Original photo width
        attribute :width, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Original photo height
        attribute :height, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Photo caption
        attribute :text, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Date when uploaded
        attribute :date, API::Types::Coercible::Int
        # @return [Number] Latitude
        attribute :lat, API::Types::Coercible::Int.optional.default(nil)
        # @return [Number] Longitude
        attribute :long, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Access key for the photo
        attribute :access_key, API::Types::Coercible::String.optional.default(nil)
        # @return [API::Base::Likes] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :likes, Dry::Types[API::Base::Likes].optional.default(nil)
        # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :reposts, API::Types::Coercible::Hash.optional.default(nil)
        # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :comments, API::Types::Coercible::Hash.optional.default(nil)
        # @return [API::Base::BoolInt] Information whether current user can comment the photo
        attribute :can_comment, API::Base::BoolInt.optional.default(nil)
        # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :tags, API::Types::Coercible::Hash.optional.default(nil)
        # @return [API::Base::PropertyExists] Returns if the photo is hidden above the wall
        attribute :hidden, API::Base::PropertyExists.optional.default(nil)
        # @return [Integer] Real position of the photo
        attribute :real_offset, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
