# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Leads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Checked < Vk::Schema::Model
          # @return [String] Information whether user can start the lead
          attribute :result, Schema::Types::Coercible::String.optional
          # @return [String] Reason why user can't start the lead
          attribute :reason, Schema::Types::Coercible::String.optional
          # @return [String] URL user should open to start the lead
          attribute :start_link, Schema::Types::Coercible::String.optional
          # @return [String] Session ID
          attribute :sid, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
