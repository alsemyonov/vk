# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class MemberStatusFull < Vk::Schema::Object
        # @return [API::Base::BoolInt] Information whether user is a member of the group
        attribute :member, API::Base::BoolInt
        # @return [Integer] User ID
        attribute :user_id, API::Types::Coercible::Int
        # @return [API::Base::BoolInt] Information whether user has been invited to the group
        attribute :invitation, API::Base::BoolInt.optional
        # @return [API::Base::BoolInt] Information whether user has send request to the group
        attribute :request, API::Base::BoolInt.optional
      end
    end
  end
end
