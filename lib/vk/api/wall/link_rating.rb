# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class LinkRating < Vk::Schema::Object
        # @return [Number] Count of stars
        attribute :stars, API::Types::Coercible::Int.optional
        # @return [Integer] Count of reviews
        attribute :reviews_count, API::Types::Coercible::Int.optional
      end
    end
  end
end
