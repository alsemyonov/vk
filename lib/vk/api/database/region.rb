# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Database < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Region < Vk::Schema::Object
        # @return [Integer] Region ID
        attribute :id, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Region title
        attribute :title, API::Types::Coercible::String.optional.default(nil)
      end
    end
  end
end
