# frozen_string_literal: true
require 'vk/api/types'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      # Current user's role
      AccessRole = API::Types::Coercible::String.enum('admin', 'manager', 'reports')
    end
  end
end
