# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Base < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class CommentsInfo < Vk::Schema::Object
        # @return [Integer] Comments number
        attribute :count, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Information whether current user can comment the post
        attribute :can_post, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
