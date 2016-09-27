# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Account
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class LookupResult < Vk::Schema::Model
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :found, Schema::Types::Coercible::Array.member(Model::Account::UserXtrContacts).optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :other, Schema::Types::Coercible::Array.optional
        end
      end
    end
  end
end
