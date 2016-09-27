# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Messages
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class UserXtrInvitedBy < Model::Users::UserXtrType
          # @return [Integer] ID of the inviter
          attribute :invited_by, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
