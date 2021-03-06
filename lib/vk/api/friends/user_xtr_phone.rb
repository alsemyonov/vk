# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Friends < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class UserXtrPhone < API::Users::UserFull
        # @return [String] User phone
        attribute :phone, API::Types::Coercible::String.optional.default(nil)
      end
    end
  end
end
