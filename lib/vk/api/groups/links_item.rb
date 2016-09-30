# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class LinksItem < Vk::Schema::Object
        # @return [Integer] Link ID
        attribute :id, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Link URL
        attribute :url, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Information whether the link title can be edited
        attribute :edit_title, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Link title
        attribute :name, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Link description
        attribute :desc, API::Types::Coercible::String.optional.default(nil)
        # @return [String] URL of square image of the link with 50 pixels in width
        attribute :photo_50, API::Types::Coercible::String.optional.default(nil)
        # @return [String] URL of square image of the link with 100 pixels in width
        attribute :photo_100, API::Types::Coercible::String.optional.default(nil)
      end
    end
  end
end
