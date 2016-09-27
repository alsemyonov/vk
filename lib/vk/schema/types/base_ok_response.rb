# frozen_string_literal: true
require 'vk/schema/types'

module Vk
  class Schema
    module Types
      # Returns 1 if request has been processed successfully
      BaseOkResponse = Schema::Types::Coercible::Int.enum(1)
    end
  end
end
