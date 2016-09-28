# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Widgets < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class WidgetLikes < Vk::Schema::Object
        # @return [Integer] Likes number
        attribute :count, API::Types::Coercible::Int.optional
      end
    end
  end
end
