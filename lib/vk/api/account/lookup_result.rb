# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class LookupResult < Vk::Schema::Object
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :found, API::Types::Coercible::Array.member(API::Account::UserXtrContacts).optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :other, API::Types::Coercible::Array.member(API::Types::Coercible::Hash).optional.default(nil)
      end
    end
  end
end
