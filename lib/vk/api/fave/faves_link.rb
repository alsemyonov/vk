# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Fave < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class FavesLink < Vk::Schema::Object
        # @return [Integer] Link ID
        attribute :id, API::Types::Coercible::Int.optional
        # @return [String] Link URL
        attribute :url, API::Types::Coercible::String.optional
        # @return [String] Link title
        attribute :title, API::Types::Coercible::String.optional
        # @return [String] Link description
        attribute :description, API::Types::Coercible::String.optional
        # @return [String] URL of the preview image with 50 px in width
        attribute :photo_50, API::Types::Coercible::String.optional
        # @return [String] URL of the preview image with 100 px in width
        attribute :photo_100, API::Types::Coercible::String.optional
        # @return [String] URL of the preview image with 200 px in width
        attribute :photo_200, API::Types::Coercible::String.optional
      end
    end
  end
end
