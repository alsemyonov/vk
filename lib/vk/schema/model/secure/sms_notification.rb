# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Secure
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class SmsNotification < Vk::Schema::Model
          # @return [Integer] Notification ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Application ID
          attribute :app_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] User ID
          attribute :user_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Date when message has been sent in Unixtime
          attribute :date, Schema::Types::Coercible::Int.optional
          # @return [String] Messsage text
          attribute :message, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
