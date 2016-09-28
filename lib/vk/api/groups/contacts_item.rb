# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class ContactsItem < Vk::Schema::Object
        # @return [Integer] User ID
        attribute :user_id, API::Types::Coercible::Int.optional
        # @return [String] Contact description
        attribute :desc, API::Types::Coercible::String.optional
        # @return [String] Contact email
        attribute :email, API::Types::Coercible::String.optional
        # @return [String] Contact phone
        attribute :phone, API::Types::Coercible::String.optional
      end
    end
  end
end
