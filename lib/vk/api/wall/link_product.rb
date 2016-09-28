# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class LinkProduct < Vk::Schema::Object
        # @return [API::Market::Price] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :price, Dry::Types[API::Market::Price].optional
      end
    end
  end
end
