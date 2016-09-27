# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Polls
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Voters < Vk::Schema::Model
          # @return [Integer] Answer ID
          attribute :answer_id, Schema::Types::Coercible::Int.optional
          # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :users, Schema::Types::Coercible::Hash.optional
        end
      end
    end
  end
end
