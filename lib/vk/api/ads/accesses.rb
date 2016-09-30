# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Accesses < Vk::Schema::Object
        # @return [String] Client ID
        attribute :client_id, API::Types::Coercible::String.optional.default(nil)
        # @return [API::Ads::AccessRole] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :role, API::Ads::AccessRole.optional.default(nil)
      end
    end
  end
end
