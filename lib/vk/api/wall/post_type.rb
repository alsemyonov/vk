# frozen_string_literal: true
require 'vk/api/types'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      # Post type
      PostType = API::Types::Coercible::String.enum('post', 'copy', 'reply', 'postpone', 'suggest')
    end
  end
end
