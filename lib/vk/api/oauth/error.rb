# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Oauth < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Error < Vk::Schema::Object
        # @return [String] Error type
        attribute :error, API::Types::Coercible::String
        # @return [String] Error description
        attribute :error_description, API::Types::Coercible::String
        # @return [String] URI for validation
        attribute :redirect_uri, API::Types::Coercible::String.optional
      end
    end
  end
end
