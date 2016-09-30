# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class MemberRole < Vk::Schema::Object
        # @return [Integer] User ID
        attribute :id, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] User's credentials as community admin
        attribute :role, API::Types::Coercible::String.enum("moderator", "editor", "administrator", "creator").optional.default(nil)
      end
    end
  end
end
