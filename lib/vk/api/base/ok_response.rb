# frozen_string_literal: true
require 'vk/api/types'

module Vk
  module API
    class Base < Vk::Schema::Namespace
      # Returns 1 if request has been processed successfully
      OkResponse = API::Types::Coercible::Int.enum(1)
    end
  end
end
