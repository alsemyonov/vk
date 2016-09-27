# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Groups
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class MemberStatusFull < Vk::Schema::Model
          # @return [BaseBoolInt] Information whether user is a member of the group
          attribute :member, Schema::Types::BaseBoolInt
          # @return [Integer] User ID
          attribute :user_id, Schema::Types::Coercible::Int
          # @return [BaseBoolInt] Information whether user has been invited to the group
          attribute :invitation, Schema::Types::BaseBoolInt.optional
          # @return [BaseBoolInt] Information whether user has send request to the group
          attribute :request, Schema::Types::BaseBoolInt.optional
        end
      end
    end
  end
end
