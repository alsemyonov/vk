# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Messages
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class MessageAttachment < Vk::Schema::Model
          # @return [Photo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :photo, Dry::Types[Model::Photos::Photo].optional
          # @return [AudioFull] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :audio, Dry::Types[Model::Audio::AudioFull].optional
          # @return [Video] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :video, Dry::Types[Model::Video::Video].optional
          # @return [Doc] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :doc, Dry::Types[Model::Docs::Doc].optional
          # @return [MessageLink] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :link, Dry::Types[Model::Messages::MessageLink].optional
          # @return [MarketItem] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :market, Dry::Types[Model::Market::MarketItem].optional
          # @return [MarketAlbum] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :market_market_album, Dry::Types[Model::Market::MarketAlbum].optional
          # @return [Layout] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :gift, Dry::Types[Model::Gifts::Layout].optional
          # @return [Sticker] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :sticker, Dry::Types[Model::Base::Sticker].optional
          # @return [WallpostAttached] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :wall, Dry::Types[Model::Wall::WallpostAttached].optional
          # @return [WallComment] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :wall_reply, Dry::Types[Model::Wall::WallComment].optional
          # @return [String] Attachment type
          attribute :type, Schema::Types::Coercible::String
        end
      end
    end
  end
end
