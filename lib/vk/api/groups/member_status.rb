# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class MemberStatus < Vk::Schema::Object
        # @return [API::Base::BoolInt] Information whether user is a member of the group
        attribute :member, API::Base::BoolInt
        # @return [Integer] User ID
        attribute :user_id, API::Types::Coercible::Int
      end
    end
  end
end
