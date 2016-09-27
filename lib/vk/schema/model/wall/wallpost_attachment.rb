# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Wall
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class WallpostAttachment < Vk::Schema::Model
          # @return [Photo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :photo, Dry::Types[Model::Photos::Photo].optional
          # @return [PostedPhoto] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :posted_photo, Dry::Types[Model::Wall::PostedPhoto].optional
          # @return [AudioFull] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :audio, Dry::Types[Model::Audio::AudioFull].optional
          # @return [Video] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :video, Dry::Types[Model::Video::Video].optional
          # @return [Doc] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :doc, Dry::Types[Model::Docs::Doc].optional
          # @return [WallLink] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :link, Dry::Types[Model::Wall::WallLink].optional
          # @return [Graffiti] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :graffiti, Dry::Types[Model::Wall::Graffiti].optional
          # @return [AttachedNote] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :note, Dry::Types[Model::Wall::AttachedNote].optional
          # @return [AppPost] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :app, Dry::Types[Model::Wall::AppPost].optional
          # @return [Poll] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :poll, Dry::Types[Model::Polls::Poll].optional
          # @return [WikipageFull] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :page, Dry::Types[Model::Pages::WikipageFull].optional
          # @return [PhotoAlbum] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :album, Dry::Types[Model::Photos::PhotoAlbum].optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :photos_list, Schema::Types::Coercible::Array.optional
          # @return [MarketAlbum] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :market_market_album, Dry::Types[Model::Market::MarketAlbum].optional
          # @return [MarketItem] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :market, Dry::Types[Model::Market::MarketItem].optional
          # @return [String] Attachment type
          attribute :type, Schema::Types::Coercible::String
        end
      end
    end
  end
end
