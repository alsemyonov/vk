# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Groups
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class LinksItem < Vk::Schema::Model
          # @return [Integer] Link ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [String] Link URL
          attribute :url, Schema::Types::Coercible::String.optional
          # @return [Integer] Information whether the link title can be edited
          attribute :edit_title, Schema::Types::Coercible::Int.optional
          # @return [Integer] Link title
          attribute :name, Schema::Types::Coercible::Int.optional
          # @return [String] Link description
          attribute :desc, Schema::Types::Coercible::String.optional
          # @return [String] URL of square image of the link with 50 pixels in width
          attribute :photo_50, Schema::Types::Coercible::String.optional
          # @return [String] URL of square image of the link with 100 pixels in width
          attribute :photo_100, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
