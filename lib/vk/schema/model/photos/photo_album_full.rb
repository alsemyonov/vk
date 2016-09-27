# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Photos
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class PhotoAlbumFull < Vk::Schema::Model
          # @return [Integer] Photo album ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [Integer] Thumb photo ID
          attribute :thumb_id, Schema::Types::Coercible::Int.optional
          # @return [String] URL of the thumb image
          attribute :thumb_src, Schema::Types::Coercible::String.optional
          # @return [Integer] Album owner's ID
          attribute :owner_id, Schema::Types::Coercible::Int
          # @return [String] Photo album title
          attribute :title, Schema::Types::Coercible::String
          # @return [String] Photo album description
          attribute :description, Schema::Types::Coercible::String.optional
          # @return [Integer] Date when the album has been created in Unixtime
          attribute :created, Schema::Types::Coercible::Int
          # @return [Integer] Date when the album has been updated last time in Unixtime
          attribute :updated, Schema::Types::Coercible::Int
          # @return [Integer] Photos number
          attribute :size, Schema::Types::Coercible::Int
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :privacy_view, Schema::Types::Coercible::Array.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :privacy_comment, Schema::Types::Coercible::Array.optional
          # @return [BaseBoolInt] Information whether only community administrators can upload photos
          attribute :upload_by_admins_only, Schema::Types::BaseBoolInt.optional
          # @return [BaseBoolInt] Information whether album comments are disabled
          attribute :comments_disabled, Schema::Types::BaseBoolInt.optional
          # @return [BaseBoolInt] Information whether current user can upload photo to the album
          attribute :can_upload, Schema::Types::BaseBoolInt.optional
          # @return [BaseBoolInt] Information whether the album thumb is last photo
          attribute :thumb_is_last, Schema::Types::BaseBoolInt.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :sizes, Schema::Types::Coercible::Array.member(Model::Photos::PhotoSizes).optional
        end
      end
    end
  end
end
