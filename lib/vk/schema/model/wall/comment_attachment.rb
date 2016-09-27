# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Wall
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class CommentAttachment < Vk::Schema::Model
          # @return [Photo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :photo, Dry::Types[Model::Photos::Photo].optional
          # @return [AudioFull] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :audio, Dry::Types[Model::Audio::AudioFull].optional
          # @return [Video] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :video, Dry::Types[Model::Video::Video].optional
          # @return [Doc] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :doc, Dry::Types[Model::Docs::Doc].optional
          # @return [WallLink] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :link, Dry::Types[Model::Wall::WallLink].optional
          # @return [AttachedNote] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :note, Dry::Types[Model::Wall::AttachedNote].optional
          # @return [WikipageFull] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :page, Dry::Types[Model::Pages::WikipageFull].optional
          # @return [MarketAlbum] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :market_market_album, Dry::Types[Model::Market::MarketAlbum].optional
          # @return [MarketItem] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :market, Dry::Types[Model::Market::MarketItem].optional
          # @return [Sticker] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :sticker, Dry::Types[Model::Base::Sticker].optional
          # @return [String] Attachment type
          attribute :type, Schema::Types::Coercible::String
        end
      end
    end
  end
end
