# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class CommentAttachment < Vk::Schema::Object
        # @return [API::Photos::Photo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :photo, Dry::Types[API::Photos::Photo].optional
        # @return [API::Audio::AudioFull] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :audio, Dry::Types[API::Audio::AudioFull].optional
        # @return [API::Video::Video] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :video, Dry::Types[API::Video::Video].optional
        # @return [API::Docs::Doc] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :doc, Dry::Types[API::Docs::Doc].optional
        # @return [API::Wall::WallLink] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :link, Dry::Types[API::Wall::WallLink].optional
        # @return [API::Wall::AttachedNote] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :note, Dry::Types[API::Wall::AttachedNote].optional
        # @return [API::Pages::WikipageFull] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :page, Dry::Types[API::Pages::WikipageFull].optional
        # @return [API::Market::MarketAlbum] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :market_market_album, Dry::Types[API::Market::MarketAlbum].optional
        # @return [API::Market::MarketItem] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :market, Dry::Types[API::Market::MarketItem].optional
        # @return [API::Base::Sticker] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :sticker, Dry::Types[API::Base::Sticker].optional
        # @return [String] Attachment type
        attribute :type, API::Types::Coercible::String
      end
    end
  end
end
