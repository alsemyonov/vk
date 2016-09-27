# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Widgets
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class WidgetLikes < Vk::Schema::Model
          # @return [Integer] Likes number
          attribute :count, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
