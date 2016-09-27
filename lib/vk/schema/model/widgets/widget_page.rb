# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Widgets
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class WidgetPage < Vk::Schema::Model
          # @return [Integer] Page ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [String] Page title
          attribute :title, Schema::Types::Coercible::String.optional
          # @return [String] Page description
          attribute :description, Schema::Types::Coercible::String.optional
          # @return [String] URL of the preview image
          attribute :photo, Schema::Types::Coercible::String.optional
          # @return [String] Page abcolute URL
          attribute :url, Schema::Types::Coercible::String.optional
          # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :likes, Schema::Types::Coercible::Hash.optional
          # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :comments, Schema::Types::Coercible::Hash.optional
          # @return [Integer] Date when widgets on the page has been initialized firstly in Unixtime
          attribute :date, Schema::Types::Coercible::Int.optional
          # @return [String] page_id parameter value
          attribute :page_id, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
