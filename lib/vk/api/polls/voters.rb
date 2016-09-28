# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Polls < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Voters < Vk::Schema::Object
        # @return [Integer] Answer ID
        attribute :answer_id, API::Types::Coercible::Int.optional
        # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :users, API::Types::Coercible::Hash.optional
      end
    end
  end
end
