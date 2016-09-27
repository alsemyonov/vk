# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Video
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class VideoFull < Vk::Schema::Model
          # @return [Integer] Video ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Video owner ID
          attribute :owner_id, Schema::Types::Coercible::Int.optional
          # @return [String] Video title
          attribute :title, Schema::Types::Coercible::String.optional
          # @return [Integer] Video duration in seconds
          attribute :duration, Schema::Types::Coercible::Int.optional
          # @return [String] Video description
          attribute :description, Schema::Types::Coercible::String.optional
          # @return [Integer] Date when video has been uploaded in Unixtime
          attribute :date, Schema::Types::Coercible::Int.optional
          # @return [Integer] Number of views
          attribute :views, Schema::Types::Coercible::Int.optional
          # @return [Integer] Number of comments
          attribute :comments, Schema::Types::Coercible::Int.optional
          # @return [String] URL of the preview image with 130 px in width
          attribute :photo_130, Schema::Types::Coercible::String.optional
          # @return [String] URL of the preview image with 320 px in width
          attribute :photo_320, Schema::Types::Coercible::String.optional
          # @return [String] URL of the preview image with 800 px in width
          attribute :photo_800, Schema::Types::Coercible::String.optional
          # @return [String] Video access key
          attribute :access_key, Schema::Types::Coercible::String.optional
          # @return [Integer] Date when the video has been added in Unixtime
          attribute :adding_date, Schema::Types::Coercible::Int.optional
          # @return [String] URL of the page with a player that can be used to play the video in the browser.
          attribute :player, Schema::Types::Coercible::String.optional
          # @return [BaseBoolInt] Information whether current user can edit the video
          attribute :can_edit, Schema::Types::BaseBoolInt.optional
          # @return [BaseBoolInt] Information whether current user can add the video
          attribute :can_add, Schema::Types::BaseBoolInt.optional
          # @return [BasePropertyExists] Returns if the video is processing
          attribute :processing, Schema::Types::BasePropertyExists.optional
          # @return [BasePropertyExists] Returns if the video is live translation
          attribute :live, Schema::Types::BasePropertyExists.optional
          # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :files, Schema::Types::Coercible::Hash.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :privacy_view, Schema::Types::Coercible::Array.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :privacy_comment, Schema::Types::Coercible::Array.optional
          # @return [BaseBoolInt] Information whether current user can comment the video
          attribute :can_comment, Schema::Types::BaseBoolInt.optional
          # @return [BaseBoolInt] Information whether current user can comment the video
          attribute :can_repost, Schema::Types::BaseBoolInt.optional
          # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :likes, Schema::Types::Coercible::Hash.optional
          # @return [BaseBoolInt] Information whether the video is repeated
          attribute :repeat, Schema::Types::BaseBoolInt.optional
        end
      end
    end
  end
end
