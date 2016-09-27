# frozen_string_literal: true
require 'vk/schema/types'

module Vk
  class Schema
    module Types
      # Sort type
      BoardDefaultOrder = Schema::Types::Coercible::Int.enum(1, 2, -1, -2)
    end
  end
end
