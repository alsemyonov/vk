# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Ads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Account < Vk::Schema::Model
          # @return [Integer] Account ID
          attribute :account_id, Schema::Types::Coercible::Int
          # @return [String] Account type
          attribute :account_type, Schema::Types::Coercible::String
          # @return [BaseBoolInt] Information whether account is active
          attribute :account_status, Schema::Types::BaseBoolInt
          # @return [AdsAccessRole] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :access_role, Schema::Types::AdsAccessRole
        end
      end
    end
  end
end
