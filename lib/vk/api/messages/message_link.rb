# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class MessageLink < Vk::Schema::Object
        # @return [String] Link URL
        attribute :url, API::Types::Coercible::String.optional
        # @return [String] Link title
        attribute :title, API::Types::Coercible::String.optional
        # @return [String] Link description
        attribute :description, API::Types::Coercible::String.optional
        # @return [String] URL of the preview image
        attribute :image_src, API::Types::Coercible::String.optional
      end
    end
  end
end
