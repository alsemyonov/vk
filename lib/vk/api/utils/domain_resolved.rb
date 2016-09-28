# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Utils < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class DomainResolved < Vk::Schema::Object
        # @return [String] Object type
        attribute :type, API::Types::Coercible::String.optional
        # @return [Integer] Object ID
        attribute :object_id, API::Types::Coercible::Int.optional
      end
    end
  end
end
