# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class LinkButton < Vk::Schema::Object
        # @return [String] Button URL
        attribute :url, API::Types::Coercible::String.optional
        # @return [String] Button title
        attribute :title, API::Types::Coercible::String.optional
      end
    end
  end
end
