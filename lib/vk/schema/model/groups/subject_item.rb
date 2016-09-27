# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Groups
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class SubjectItem < Vk::Schema::Model
          # @return [Integer] Subject ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [String] Subject title
          attribute :name, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
