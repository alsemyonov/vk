# frozen_string_literal: true
require 'vk/schema/types'

module Vk
  class Schema
    module Types
      # Settings parameters
      AccountOnoffOptions = Schema::Types::Coercible::String.enum('on', 'off')
    end
  end
end
