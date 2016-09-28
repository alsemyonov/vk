# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Secure < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class TokenChecked < Vk::Schema::Object
        # @return [API::Base::OkResponse] Returns if successfully processed
        attribute :success, API::Base::OkResponse.optional
        # @return [Integer] User ID
        attribute :user_id, API::Types::Coercible::Int.optional
        # @return [Integer] Date when access_token has been generated in Unixtime
        attribute :date, API::Types::Coercible::Int.optional
        # @return [Integer] Date when access_token will expire in Unixtime
        attribute :expire, API::Types::Coercible::Int.optional
      end
    end
  end
end
