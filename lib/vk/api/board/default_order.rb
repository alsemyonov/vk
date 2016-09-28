# frozen_string_literal: true
require 'vk/api/types'

module Vk
  module API
    class Board < Vk::Schema::Namespace
      # Sort type
      DefaultOrder = API::Types::Coercible::Int.enum(1, 2, -1, -2)
    end
  end
end
