# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Friends < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class FriendsList < Vk::Schema::Object
        # @return [String] List title
        attribute :name, API::Types::Coercible::String
        # @return [Integer] List ID
        attribute :id, API::Types::Coercible::Int
      end
    end
  end
end
