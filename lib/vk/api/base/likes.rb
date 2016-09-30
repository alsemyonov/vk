# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Base < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Likes < Vk::Schema::Object
        # @return [API::Base::BoolInt] Information whether current user likes the photo
        attribute :user_likes, API::Base::BoolInt.optional.default(nil)
        # @return [Integer] Likes number
        attribute :count, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
