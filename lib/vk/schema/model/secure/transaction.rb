# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Secure
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Transaction < Vk::Schema::Model
          # @return [Integer] Transaction ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [Integer] From ID
          attribute :uid_from, Schema::Types::Coercible::Int.optional
          # @return [Integer] To ID
          attribute :uid_to, Schema::Types::Coercible::Int.optional
          # @return [Integer] Votes number
          attribute :votes, Schema::Types::Coercible::Int.optional
          # @return [Integer] Transaction date in Unixtime
          attribute :date, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
