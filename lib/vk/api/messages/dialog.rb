# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Dialog < Vk::Schema::Object
        # @return [Integer] Information whether unread messages are in the dialog
        attribute :unread, API::Types::Coercible::Int.optional.default(nil)
        # @return [API::Messages::Message] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :message, Dry::Types[API::Messages::Message].optional.default(nil)
        # @return [Integer] ID of the last message read by current user
        attribute :in_read, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] ID of the last message read by the others
        attribute :out_read, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
