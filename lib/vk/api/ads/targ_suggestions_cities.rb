# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class TargSuggestionsCities < Vk::Schema::Object
        # @return [Integer] Object ID
        attribute :id, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Object name
        attribute :name, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Parent object
        attribute :parent, API::Types::Coercible::String.optional.default(nil)
      end
    end
  end
end
