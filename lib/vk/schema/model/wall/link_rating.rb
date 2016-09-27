# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Wall
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class LinkRating < Vk::Schema::Model
          # @return [Number] Count of stars
          attribute :stars, Schema::Types::Coercible::Int.optional
          # @return [Integer] Count of reviews
          attribute :reviews_count, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
