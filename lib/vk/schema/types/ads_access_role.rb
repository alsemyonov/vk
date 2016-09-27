# frozen_string_literal: true
require 'vk/schema/types'

module Vk
  class Schema
    module Types
      # Current user's role
      AdsAccessRole = Schema::Types::Coercible::String.enum('admin', 'manager', 'reports')
    end
  end
end
