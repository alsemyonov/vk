# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class PostSource < Vk::Schema::Object
        # @return [String] Type of post source
        attribute :type, API::Types::Coercible::String.optional
        # @return [String] Platform name
        attribute :platform, API::Types::Coercible::String.optional
        # @return [String] Additional data
        attribute :data, API::Types::Coercible::String.optional
        # @return [String] URL to an external site used to publish the post
        attribute :url, API::Types::Coercible::String.optional
      end
    end
  end
end
