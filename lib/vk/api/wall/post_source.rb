# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class PostSource < Vk::Schema::Object
        # @return [String] Type of post source
        attribute :type, API::Types::Coercible::String.enum("vk", "widget", "api", "rss", "sms").optional.default(nil)
        # @return [String] Platform name
        attribute :platform, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Additional data
        attribute :data, API::Types::Coercible::String.optional.default(nil)
        # @return [String] URL to an external site used to publish the post
        attribute :url, API::Types::Coercible::String.optional.default(nil)
      end
    end
  end
end
