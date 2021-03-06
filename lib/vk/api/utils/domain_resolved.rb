# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Utils < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class DomainResolved < Vk::Schema::Object
        # @return [String] Object type
        attribute :type, API::Types::Coercible::String.enum("user", "group", "application", "page").optional.default(nil)
        # @return [Integer] Object ID
        attribute :object_id, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
