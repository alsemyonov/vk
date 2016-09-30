# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class WallLink < Vk::Schema::Object
        # @return [String] Link URL
        attribute :url, API::Types::Coercible::String
        # @return [String] Link title
        attribute :title, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Link caption
        attribute :caption, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Link description
        attribute :description, API::Types::Coercible::String.optional.default(nil)
        # @return [API::Photos::Photo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :photo, Dry::Types[API::Photos::Photo].optional.default(nil)
        # @return [API::Base::BoolInt] Information whether the link is external
        attribute :is_external, API::Base::BoolInt.optional.default(nil)
        # @return [String] URL of the page with article preview
        attribute :preview_url, API::Types::Coercible::String.optional.default(nil)
        # @return [String] String ID of the page with article preview
        attribute :preview_page, API::Types::Coercible::String.optional.default(nil)
        # @return [API::Wall::LinkButton] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :button, Dry::Types[API::Wall::LinkButton].optional.default(nil)
        # @return [API::Wall::LinkProduct] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :product, Dry::Types[API::Wall::LinkProduct].optional.default(nil)
        # @return [API::Wall::LinkRating] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :rating, Dry::Types[API::Wall::LinkRating].optional.default(nil)
      end
    end
  end
end
