# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Users
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class User < Model::Users::UserMin
          # @return [Integer] User sex
          attribute :sex, Schema::Types::Coercible::Int.optional
          # @return [String] Domain name of the user's page
          attribute :screen_name, Schema::Types::Coercible::String.optional
          # @return [String] URL of square photo of the user with 50 pixels in width
          attribute :photo_50, Schema::Types::Coercible::String.optional
          # @return [String] URL of square photo of the user with 100 pixels in width
          attribute :photo_100, Schema::Types::Coercible::String.optional
          # @return [Integer] Information whether the user is online
          attribute :online, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
