# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Groups
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class ContactsItem < Vk::Schema::Model
          # @return [Integer] User ID
          attribute :user_id, Schema::Types::Coercible::Int.optional
          # @return [String] Contact description
          attribute :desc, Schema::Types::Coercible::String.optional
          # @return [String] Contact email
          attribute :email, Schema::Types::Coercible::String.optional
          # @return [String] Contact phone
          attribute :phone, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
