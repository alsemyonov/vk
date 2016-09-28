# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Database < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class University < Vk::Schema::Object
        # @return [Integer] University ID
        attribute :id, API::Types::Coercible::Int.optional
        # @return [String] University title
        attribute :title, API::Types::Coercible::String.optional
      end
    end
  end
end
