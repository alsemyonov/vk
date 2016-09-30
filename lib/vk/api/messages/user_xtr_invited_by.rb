# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class UserXtrInvitedBy < API::Users::UserXtrType
        # @return [Integer] ID of the inviter
        attribute :invited_by, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
