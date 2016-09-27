# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Messages
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Chat < Vk::Schema::Model
          # @return [Integer] Chat ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [String] Chat type
          attribute :type, Schema::Types::Coercible::String
          # @return [Integer] Chat creator ID
          attribute :admin_id, Schema::Types::Coercible::Int
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :users, Schema::Types::Coercible::Array
          # @return [ChatPushSettings] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :push_settings, Dry::Types[Model::Messages::ChatPushSettings].optional
          # @return [String] URL of the preview image with 50 px in width
          attribute :photo_50, Schema::Types::Coercible::String.optional
          # @return [String] URL of the preview image with 100 px in width
          attribute :photo_100, Schema::Types::Coercible::String.optional
          # @return [String] URL of the preview image with 200 px in width
          attribute :photo_200, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
