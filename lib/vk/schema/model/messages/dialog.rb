# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Messages
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Dialog < Vk::Schema::Model
          # @return [Integer] Information whether unread messages are in the dialog
          attribute :unread, Schema::Types::Coercible::Int.optional
          # @return [Message] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :message, Dry::Types[Model::Messages::Message].optional
          # @return [Integer] ID of the last message read by current user
          attribute :in_read, Schema::Types::Coercible::Int.optional
          # @return [Integer] ID of the last message read by the others
          attribute :out_read, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
