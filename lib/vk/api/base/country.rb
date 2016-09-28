# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Base < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Country < Vk::Schema::Object
        # @return [Integer] Country ID
        attribute :id, API::Types::Coercible::Int.optional
        # @return [String] Country title
        attribute :title, API::Types::Coercible::String.optional
      end
    end
  end
end
