# frozen_string_literal: true
require 'vk/api/types'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      # Settings parameters
      OnoffOptions = API::Types::Coercible::String.enum('on', 'off')
    end
  end
end
