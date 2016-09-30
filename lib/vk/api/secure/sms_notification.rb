# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Secure < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class SmsNotification < Vk::Schema::Object
        # @return [Integer] Notification ID
        attribute :id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Application ID
        attribute :app_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] User ID
        attribute :user_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Date when message has been sent in Unixtime
        attribute :date, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Messsage text
        attribute :message, API::Types::Coercible::String.optional.default(nil)
      end
    end
  end
end
