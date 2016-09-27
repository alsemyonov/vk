# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Groups
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class MemberRole < Vk::Schema::Model
          # @return [Integer] User ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [String] User's credentials as community admin
          attribute :role, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
