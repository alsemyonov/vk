# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class VideoFull < Vk::Schema::Object
        # @return [Integer] Video ID
        attribute :id, API::Types::Coercible::Int.optional
        # @return [Integer] Video owner ID
        attribute :owner_id, API::Types::Coercible::Int.optional
        # @return [String] Video title
        attribute :title, API::Types::Coercible::String.optional
        # @return [Integer] Video duration in seconds
        attribute :duration, API::Types::Coercible::Int.optional
        # @return [String] Video description
        attribute :description, API::Types::Coercible::String.optional
        # @return [Integer] Date when video has been uploaded in Unixtime
        attribute :date, API::Types::Coercible::Int.optional
        # @return [Integer] Number of views
        attribute :views, API::Types::Coercible::Int.optional
        # @return [Integer] Number of comments
        attribute :comments, API::Types::Coercible::Int.optional
        # @return [String] URL of the preview image with 130 px in width
        attribute :photo_130, API::Types::Coercible::String.optional
        # @return [String] URL of the preview image with 320 px in width
        attribute :photo_320, API::Types::Coercible::String.optional
        # @return [String] URL of the preview image with 800 px in width
        attribute :photo_800, API::Types::Coercible::String.optional
        # @return [String] Video access key
        attribute :access_key, API::Types::Coercible::String.optional
        # @return [Integer] Date when the video has been added in Unixtime
        attribute :adding_date, API::Types::Coercible::Int.optional
        # @return [String] URL of the page with a player that can be used to play the video in the browser.
        attribute :player, API::Types::Coercible::String.optional
        # @return [API::Base::BoolInt] Information whether current user can edit the video
        attribute :can_edit, API::Base::BoolInt.optional
        # @return [API::Base::BoolInt] Information whether current user can add the video
        attribute :can_add, API::Base::BoolInt.optional
        # @return [API::Base::PropertyExists] Returns if the video is processing
        attribute :processing, API::Base::PropertyExists.optional
        # @return [API::Base::PropertyExists] Returns if the video is live translation
        attribute :live, API::Base::PropertyExists.optional
        # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :files, API::Types::Coercible::Hash.optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :privacy_view, API::Types::Coercible::Array.optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :privacy_comment, API::Types::Coercible::Array.optional
        # @return [API::Base::BoolInt] Information whether current user can comment the video
        attribute :can_comment, API::Base::BoolInt.optional
        # @return [API::Base::BoolInt] Information whether current user can comment the video
        attribute :can_repost, API::Base::BoolInt.optional
        # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :likes, API::Types::Coercible::Hash.optional
        # @return [API::Base::BoolInt] Information whether the video is repeated
        attribute :repeat, API::Base::BoolInt.optional
      end
    end
  end
end
