# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class AppPost < Vk::Schema::Object
        # @return [Integer] Application ID
        attribute :id, API::Types::Coercible::Int.optional
        # @return [String] Application name
        attribute :name, API::Types::Coercible::String.optional
        # @return [String] URL of the preview image with 130 px in width
        attribute :photo_130, API::Types::Coercible::String.optional
        # @return [String] URL of the preview image with 604 px in width
        attribute :photo_604, API::Types::Coercible::String.optional
      end
    end
  end
end
