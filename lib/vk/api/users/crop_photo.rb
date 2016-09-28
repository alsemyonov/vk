# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Users < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class CropPhoto < Vk::Schema::Object
        # @return [API::Photos::Photo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :photo, Dry::Types[API::Photos::Photo].optional
        # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :crop, API::Types::Coercible::Hash.optional
        # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :rect, API::Types::Coercible::Hash.optional
      end
    end
  end
end
