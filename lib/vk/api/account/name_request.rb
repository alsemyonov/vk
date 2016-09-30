# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class NameRequest < Vk::Schema::Object
        # @return [Integer] Request ID needed to cancel the request
        attribute :id, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Request status
        attribute :status, API::Types::Coercible::String.optional.default(nil)
        # @return [String] First name in request
        attribute :first_name, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Last name in request
        attribute :last_name, API::Types::Coercible::String.optional.default(nil)
      end
    end
  end
end
