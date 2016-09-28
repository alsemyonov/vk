# frozen_string_literal: true
require 'vk/api/types'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      # Object type
      ObjectType = API::Types::Coercible::String.enum('ad', 'campaign', 'client', 'office')
    end
  end
end
