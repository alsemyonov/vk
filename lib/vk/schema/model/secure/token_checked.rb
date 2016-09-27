# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Secure
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class TokenChecked < Vk::Schema::Model
          # @return [BaseOkResponse] Returns if successfully processed
          attribute :success, Schema::Types::BaseOkResponse.optional
          # @return [Integer] User ID
          attribute :user_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Date when access_token has been generated in Unixtime
          attribute :date, Schema::Types::Coercible::Int.optional
          # @return [Integer] Date when access_token will expire in Unixtime
          attribute :expire, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
