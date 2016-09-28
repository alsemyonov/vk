# frozen_string_literal: true
require 'vk/api/types'

module Vk
  module API
    class Pages < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      PrivacySettings = API::Types::Coercible::Int.enum(0, 1, 2)
    end
  end
end
