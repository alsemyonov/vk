# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class WallpostAttachment < Vk::Schema::Object
        # @return [API::Photos::Photo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :photo, Dry::Types[API::Photos::Photo].optional
        # @return [API::Wall::PostedPhoto] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :posted_photo, Dry::Types[API::Wall::PostedPhoto].optional
        # @return [API::Audio::AudioFull] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :audio, Dry::Types[API::Audio::AudioFull].optional
        # @return [API::Video::Video] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :video, Dry::Types[API::Video::Video].optional
        # @return [API::Docs::Doc] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :doc, Dry::Types[API::Docs::Doc].optional
        # @return [API::Wall::WallLink] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :link, Dry::Types[API::Wall::WallLink].optional
        # @return [API::Wall::Graffiti] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :graffiti, Dry::Types[API::Wall::Graffiti].optional
        # @return [API::Wall::AttachedNote] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :note, Dry::Types[API::Wall::AttachedNote].optional
        # @return [API::Wall::AppPost] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :app, Dry::Types[API::Wall::AppPost].optional
        # @return [API::Polls::Poll] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :poll, Dry::Types[API::Polls::Poll].optional
        # @return [API::Pages::WikipageFull] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :page, Dry::Types[API::Pages::WikipageFull].optional
        # @return [API::Photos::PhotoAlbum] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :album, Dry::Types[API::Photos::PhotoAlbum].optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :photos_list, API::Types::Coercible::Array.optional
        # @return [API::Market::MarketAlbum] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :market_market_album, Dry::Types[API::Market::MarketAlbum].optional
        # @return [API::Market::MarketItem] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :market, Dry::Types[API::Market::MarketItem].optional
        # @return [String] Attachment type
        attribute :type, API::Types::Coercible::String
      end
    end
  end
end
