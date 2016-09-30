# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class PhotoAlbumFull < Vk::Schema::Object
        # @return [Integer] Photo album ID
        attribute :id, API::Types::Coercible::Int
        # @return [Integer] Thumb photo ID
        attribute :thumb_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] URL of the thumb image
        attribute :thumb_src, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Album owner's ID
        attribute :owner_id, API::Types::Coercible::Int
        # @return [String] Photo album title
        attribute :title, API::Types::Coercible::String
        # @return [String] Photo album description
        attribute :description, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Date when the album has been created in Unixtime
        attribute :created, API::Types::Coercible::Int
        # @return [Integer] Date when the album has been updated last time in Unixtime
        attribute :updated, API::Types::Coercible::Int
        # @return [Integer] Photos number
        attribute :size, API::Types::Coercible::Int
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :privacy_view, API::Types::Coercible::Array.optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :privacy_comment, API::Types::Coercible::Array.optional.default(nil)
        # @return [API::Base::BoolInt] Information whether only community administrators can upload photos
        attribute :upload_by_admins_only, API::Base::BoolInt.optional.default(nil)
        # @return [API::Base::BoolInt] Information whether album comments are disabled
        attribute :comments_disabled, API::Base::BoolInt.optional.default(nil)
        # @return [API::Base::BoolInt] Information whether current user can upload photo to the album
        attribute :can_upload, API::Base::BoolInt.optional.default(nil)
        # @return [API::Base::BoolInt] Information whether the album thumb is last photo
        attribute :thumb_is_last, API::Base::BoolInt.optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :sizes, API::Types::Coercible::Array.member(API::Photos::PhotoSizes).optional.default(nil)
      end
    end
  end
end
