# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Base < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class RepostsInfo < Vk::Schema::Object
        # @return [Integer] Reposts number
        attribute :count, API::Types::Coercible::Int.optional
        # @return [Integer] Information whether current user has reposted the post
        attribute :user_reposted, API::Types::Coercible::Int.optional
      end
    end
  end
end
