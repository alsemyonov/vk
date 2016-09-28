# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class AttachmentsHistory < Vk::Schema::Object
        # @return [String] Attachments type
        attribute :type, API::Types::Coercible::String
        # @return [API::Photos::Photo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :photo, Dry::Types[API::Photos::Photo].optional
        # @return [API::Video::Video] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :video, Dry::Types[API::Video::Video].optional
        # @return [API::Audio::AudioFull] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :audio, Dry::Types[API::Audio::AudioFull].optional
        # @return [API::Docs::Doc] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :doc, Dry::Types[API::Docs::Doc].optional
        # @return [API::Messages::MessageLink] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :link, Dry::Types[API::Messages::MessageLink].optional
      end
    end
  end
end
