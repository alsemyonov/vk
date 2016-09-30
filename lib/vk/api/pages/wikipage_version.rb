# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Pages < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class WikipageVersion < Vk::Schema::Object
        # @return [Integer] Version ID
        attribute :id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Page size in bytes
        attribute :length, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Date when the page has been edited in Unixtime
        attribute :edited, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Last editor ID
        attribute :editor_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Last editor name
        attribute :editor_name, API::Types::Coercible::String.optional.default(nil)
      end
    end
  end
end
