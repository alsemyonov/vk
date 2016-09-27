# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Wall
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class WallLink < Vk::Schema::Model
          # @return [String] Link URL
          attribute :url, Schema::Types::Coercible::String
          # @return [String] Link title
          attribute :title, Schema::Types::Coercible::String.optional
          # @return [String] Link caption
          attribute :caption, Schema::Types::Coercible::String.optional
          # @return [String] Link description
          attribute :description, Schema::Types::Coercible::String.optional
          # @return [Photo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :photo, Dry::Types[Model::Photos::Photo].optional
          # @return [BaseBoolInt] Information whether the link is external
          attribute :is_external, Schema::Types::BaseBoolInt.optional
          # @return [String] URL of the page with article preview
          attribute :preview_url, Schema::Types::Coercible::String.optional
          # @return [String] String ID of the page with article preview
          attribute :preview_page, Schema::Types::Coercible::String.optional
          # @return [LinkButton] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :button, Dry::Types[Model::Wall::LinkButton].optional
          # @return [LinkProduct] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :product, Dry::Types[Model::Wall::LinkProduct].optional
          # @return [LinkRating] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :rating, Dry::Types[Model::Wall::LinkRating].optional
        end
      end
    end
  end
end
