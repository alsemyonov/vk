# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Friends
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class RequestsXtrMessage < Vk::Schema::Model
          # @return [Integer] User ID
          attribute :user_id, Schema::Types::Coercible::Int.optional
          # @return [String] ID of the user by whom friend has been suggested
          attribute :from, Schema::Types::Coercible::String.optional
          # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :mutual, Schema::Types::Coercible::Hash.optional
          # @return [String] Message sent with a request
          attribute :message, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
