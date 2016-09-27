# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Messages
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class AttachmentsHistory < Vk::Schema::Model
          # @return [String] Attachments type
          attribute :type, Schema::Types::Coercible::String
          # @return [Photo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :photo, Dry::Types[Model::Photos::Photo].optional
          # @return [Video] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :video, Dry::Types[Model::Video::Video].optional
          # @return [AudioFull] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :audio, Dry::Types[Model::Audio::AudioFull].optional
          # @return [Doc] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :doc, Dry::Types[Model::Docs::Doc].optional
          # @return [MessageLink] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :link, Dry::Types[Model::Messages::MessageLink].optional
        end
      end
    end
  end
end
