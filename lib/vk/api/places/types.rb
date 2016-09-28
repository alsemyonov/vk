# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Places < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Types < Vk::Schema::Object
        # @return [Integer] Place type ID
        attribute :id, API::Types::Coercible::Int.optional
        # @return [Integer] Place type title
        attribute :title, API::Types::Coercible::Int.optional
        # @return [String] URL of the place's icon
        attribute :icon, API::Types::Coercible::String.optional
      end
    end
  end
end
