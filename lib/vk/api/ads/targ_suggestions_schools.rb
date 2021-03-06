# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class TargSuggestionsSchools < Vk::Schema::Object
        # @return [Integer] School ID
        attribute :id, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] School title
        attribute :name, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Full school title
        attribute :desc, API::Types::Coercible::String.optional.default(nil)
        # @return [String] School type
        attribute :type, API::Types::Coercible::String.enum("school", "university", "faculty", "chair").optional.default(nil)
        # @return [String] City name
        attribute :parent, API::Types::Coercible::String.optional.default(nil)
      end
    end
  end
end
