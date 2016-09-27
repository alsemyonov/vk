# frozen_string_literal: true
require 'vk/schema/types'

module Vk
  class Schema
    module Types
      # Post type
      WallPostType = Schema::Types::Coercible::String.enum('post', 'copy', 'reply', 'postpone', 'suggest')
    end
  end
end
