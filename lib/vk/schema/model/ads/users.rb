# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Ads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Users < Vk::Schema::Model
          # @return [Integer] User ID
          attribute :user_id, Schema::Types::Coercible::Int
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :accesses, Schema::Types::Coercible::Array.member(Model::Ads::Accesses)
        end
      end
    end
  end
end
