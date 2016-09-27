# frozen_string_literal: true
require 'vk/schema/types'

module Vk
  class Schema
    module Types
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      BaseBoolInt = Schema::Types::Coercible::Int.enum(0, 1)
    end
  end
end
