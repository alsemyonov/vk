# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Leads < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Checked < Vk::Schema::Object
        # @return [String] Information whether user can start the lead
        attribute :result, API::Types::Coercible::String.optional
        # @return [String] Reason why user can't start the lead
        attribute :reason, API::Types::Coercible::String.optional
        # @return [String] URL user should open to start the lead
        attribute :start_link, API::Types::Coercible::String.optional
        # @return [String] Session ID
        attribute :sid, API::Types::Coercible::String.optional
      end
    end
  end
end
