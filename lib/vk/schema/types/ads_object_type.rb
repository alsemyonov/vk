# frozen_string_literal: true
require 'vk/schema/types'

module Vk
  class Schema
    module Types
      # Object type
      AdsObjectType = Schema::Types::Coercible::String.enum('ad', 'campaign', 'client', 'office')
    end
  end
end
