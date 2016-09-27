# frozen_string_literal: true
require 'vk/schema/types'

module Vk
  class Schema
    module Types
      # User's credentials as community admin
      GroupsRoleOptions = Schema::Types::Coercible::String.enum('moderator', 'editor', 'administrator', 'creator')
    end
  end
end
