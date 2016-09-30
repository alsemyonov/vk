# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Secure < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Transaction < Vk::Schema::Object
        # @return [Integer] Transaction ID
        attribute :id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] From ID
        attribute :uid_from, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] To ID
        attribute :uid_to, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Votes number
        attribute :votes, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Transaction date in Unixtime
        attribute :date, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
