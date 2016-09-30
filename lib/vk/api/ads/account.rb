# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Account < Vk::Schema::Object
        # @return [Integer] Account ID
        attribute :account_id, API::Types::Coercible::Int
        # @return [String] Account type
        attribute :account_type, API::Types::Coercible::String.enum("general", "agency")
        # @return [API::Base::BoolInt] Information whether account is active
        attribute :account_status, API::Base::BoolInt
        # @return [API::Ads::AccessRole] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :access_role, API::Ads::AccessRole
      end
    end
  end
end
