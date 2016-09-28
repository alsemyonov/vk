# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class PostedPhoto < Vk::Schema::Object
        # @return [Integer] Photo ID
        attribute :id, API::Types::Coercible::Int.optional
        # @return [Integer] Photo owner's ID
        attribute :owner_id, API::Types::Coercible::Int.optional
        # @return [String] URL of the preview image with 130 px in width
        attribute :photo_130, API::Types::Coercible::String.optional
        # @return [String] URL of the preview image with 604 px in width
        attribute :photo_604, API::Types::Coercible::String.optional
      end
    end
  end
end
