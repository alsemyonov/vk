# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Leads < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Entry < Vk::Schema::Object
        # @return [Integer] User ID
        attribute :uid, API::Types::Coercible::Int.optional
        # @return [Integer] Application ID
        attribute :aid, API::Types::Coercible::Int.optional
        # @return [String] Session string ID
        attribute :sid, API::Types::Coercible::String.optional
        # @return [Integer] Date when the action has been started in Unixtime
        attribute :date, API::Types::Coercible::Int.optional
        # @return [Integer] Action type
        attribute :status, API::Types::Coercible::Int.optional
        # @return [API::Base::BoolInt] Information whether test mode is enabled
        attribute :test_mode, API::Base::BoolInt.optional
        # @return [Integer] Start date in Unixtime (for status=2)
        attribute :start_date, API::Types::Coercible::Int.optional
        # @return [String] Comment text
        attribute :comment, API::Types::Coercible::String.optional
      end
    end
  end
end
