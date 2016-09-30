# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Leads < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Start < Vk::Schema::Object
        # @return [API::Base::BoolInt] Information whether test mode is enabled
        attribute :test_mode, API::Base::BoolInt.optional.default(nil)
        # @return [String] Session data
        attribute :vk_sid, API::Types::Coercible::String.optional.default(nil)
      end
    end
  end
end
