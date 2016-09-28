# frozen_string_literal: true
require 'vk/api/types'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      # User's credentials as community admin
      RoleOptions = API::Types::Coercible::String.enum('moderator', 'editor', 'administrator', 'creator')
    end
  end
end
