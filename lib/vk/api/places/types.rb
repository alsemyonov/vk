# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Places < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Types < Vk::Schema::Object
        # @return [Integer] Place type ID
        attribute :id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Place type title
        attribute :title, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] URL of the place's icon
        attribute :icon, API::Types::Coercible::String.optional.default(nil)
      end
    end
  end
end
