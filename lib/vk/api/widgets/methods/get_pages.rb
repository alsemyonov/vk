# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Widgets < Vk::Schema::Namespace
      module Methods
        # Gets a list of application/site pages where the  or  is installed.
        class GetPages < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'widgets.getPages'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :widget_api_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [String] :order @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [String] :period @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Integer] :count @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Widgets::Methods::GetPages]

          # @!group Arguments

          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :widget_api_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :order, API::Types::Coercible::String.optional.default(nil)
          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :period, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :count, API::Types::Coercible::Int.optional.default(10)
        end
      end
    end
  end
end
