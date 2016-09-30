# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Users < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class User < API::Users::UserMin
        # @return [Integer] User sex
        attribute :sex, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Domain name of the user's page
        attribute :screen_name, API::Types::Coercible::String.optional.default(nil)
        # @return [String] URL of square photo of the user with 50 pixels in width
        attribute :photo_50, API::Types::Coercible::String.optional.default(nil)
        # @return [String] URL of square photo of the user with 100 pixels in width
        attribute :photo_100, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Information whether the user is online
        attribute :online, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
