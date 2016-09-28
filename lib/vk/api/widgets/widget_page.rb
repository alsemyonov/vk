# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Widgets < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class WidgetPage < Vk::Schema::Object
        # @return [Integer] Page ID
        attribute :id, API::Types::Coercible::Int.optional
        # @return [String] Page title
        attribute :title, API::Types::Coercible::String.optional
        # @return [String] Page description
        attribute :description, API::Types::Coercible::String.optional
        # @return [String] URL of the preview image
        attribute :photo, API::Types::Coercible::String.optional
        # @return [String] Page abcolute URL
        attribute :url, API::Types::Coercible::String.optional
        # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :likes, API::Types::Coercible::Hash.optional
        # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :comments, API::Types::Coercible::Hash.optional
        # @return [Integer] Date when widgets on the page has been initialized firstly in Unixtime
        attribute :date, API::Types::Coercible::Int.optional
        # @return [String] page_id parameter value
        attribute :page_id, API::Types::Coercible::String.optional
      end
    end
  end
end
