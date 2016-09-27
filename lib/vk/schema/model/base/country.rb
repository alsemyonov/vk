# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Base
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Country < Vk::Schema::Model
          # @return [Integer] Country ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [String] Country title
          attribute :title, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
