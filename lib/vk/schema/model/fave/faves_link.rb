# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Fave
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class FavesLink < Vk::Schema::Model
          # @return [Integer] Link ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [String] Link URL
          attribute :url, Schema::Types::Coercible::String.optional
          # @return [String] Link title
          attribute :title, Schema::Types::Coercible::String.optional
          # @return [String] Link description
          attribute :description, Schema::Types::Coercible::String.optional
          # @return [String] URL of the preview image with 50 px in width
          attribute :photo_50, Schema::Types::Coercible::String.optional
          # @return [String] URL of the preview image with 100 px in width
          attribute :photo_100, Schema::Types::Coercible::String.optional
          # @return [String] URL of the preview image with 200 px in width
          attribute :photo_200, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
