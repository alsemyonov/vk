# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class VideoTagInfo < Vk::Schema::Object
        # @return [Integer] Video ID
        attribute :id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Video owner ID
        attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Video title
        attribute :title, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Video duration in seconds
        attribute :duration, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Video description
        attribute :description, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Date when video has been uploaded in Unixtime
        attribute :date, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Number of views
        attribute :views, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Number of comments
        attribute :comments, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] URL of the preview image with 130 px in width
        attribute :photo_130, API::Types::Coercible::String.optional.default(nil)
        # @return [String] URL of the preview image with 320 px in width
        attribute :photo_320, API::Types::Coercible::String.optional.default(nil)
        # @return [String] URL of the preview image with 800 px in width
        attribute :photo_800, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Video access key
        attribute :access_key, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Date when the video has been added in Unixtime
        attribute :adding_date, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] URL of the page with a player that can be used to play the video in the browser.
        attribute :player, API::Types::Coercible::String.optional.default(nil)
        # @return [API::Base::BoolInt] Information whether current user can edit the video
        attribute :can_edit, API::Base::BoolInt.optional.default(nil)
        # @return [API::Base::BoolInt] Information whether current user can add the video
        attribute :can_add, API::Base::BoolInt.optional.default(nil)
        # @return [API::Base::PropertyExists] Returns if the video is processing
        attribute :processing, API::Base::PropertyExists.optional.default(nil)
        # @return [API::Base::PropertyExists] Returns if the video is live translation
        attribute :live, API::Base::PropertyExists.optional.default(nil)
        # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :files, API::Types::Coercible::Hash.optional.default(nil)
        # @return [Integer] ID of the tag creator
        attribute :placer_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Date when tag has been added in Unixtime
        attribute :tag_created, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Tag ID
        attribute :tag_id, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
