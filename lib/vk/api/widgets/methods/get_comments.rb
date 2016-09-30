# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Widgets < Vk::Schema::Namespace
      module Methods
        # Gets a list of comments for the page added through the .
        class GetComments < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'widgets.getComments'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :widget_api_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [String] :url @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [String] :page_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [String] :order @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Array] :fields @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Integer] :count @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Widgets::Methods::GetComments]

          # @!group Arguments

          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :widget_api_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :url, API::Types::Coercible::String.optional.default(nil)
          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :page_id, API::Types::Coercible::String.optional.default(nil)
          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :order, API::Types::Coercible::String.optional.default(nil)
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :fields, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :count, API::Types::Coercible::Int.optional.default(10)
        end
      end
    end
  end
end
