# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Leads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Start < Vk::Schema::Model
          # @return [BaseBoolInt] Information whether test mode is enabled
          attribute :test_mode, Schema::Types::BaseBoolInt.optional
          # @return [String] Session data
          attribute :vk_sid, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
