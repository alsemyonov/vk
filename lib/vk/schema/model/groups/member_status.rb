# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Groups
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class MemberStatus < Vk::Schema::Model
          # @return [BaseBoolInt] Information whether user is a member of the group
          attribute :member, Schema::Types::BaseBoolInt
          # @return [Integer] User ID
          attribute :user_id, Schema::Types::Coercible::Int
        end
      end
    end
  end
end
