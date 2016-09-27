# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Leads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Entry < Vk::Schema::Model
          # @return [Integer] User ID
          attribute :uid, Schema::Types::Coercible::Int.optional
          # @return [Integer] Application ID
          attribute :aid, Schema::Types::Coercible::Int.optional
          # @return [String] Session string ID
          attribute :sid, Schema::Types::Coercible::String.optional
          # @return [Integer] Date when the action has been started in Unixtime
          attribute :date, Schema::Types::Coercible::Int.optional
          # @return [Integer] Action type
          attribute :status, Schema::Types::Coercible::Int.optional
          # @return [BaseBoolInt] Information whether test mode is enabled
          attribute :test_mode, Schema::Types::BaseBoolInt.optional
          # @return [Integer] Start date in Unixtime (for status=2)
          attribute :start_date, Schema::Types::Coercible::Int.optional
          # @return [String] Comment text
          attribute :comment, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
