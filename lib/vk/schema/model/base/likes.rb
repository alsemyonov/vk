# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Base
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Likes < Vk::Schema::Model
          # @return [BaseBoolInt] Information whether current user likes the photo
          attribute :user_likes, Schema::Types::BaseBoolInt.optional
          # @return [Integer] Likes number
          attribute :count, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
