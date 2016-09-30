# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class UserXtrContacts < API::Users::UserFull
        # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :contact, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :request_sent, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :sort_num, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
