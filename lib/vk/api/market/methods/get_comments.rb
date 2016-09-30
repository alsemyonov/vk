# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Market < Vk::Schema::Namespace
      module Methods
        # Returns comments list for an item.
        class GetComments < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'market.getComments'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of an item owner community
          #   @option arguments [Integer] :item_id Item ID.
          #   @option arguments [Boolean] :need_likes '1' — to return likes info.
          #   @option arguments [Integer] :start_comment_id ID of a comment to start a list from (details below).
          #   @option arguments [Integer] :count Number of results to return.
          #   @option arguments [String] :sort Sort order ('asc' — from old to new, 'desc' — from new to old)
          #   @option arguments [Boolean] :extended '1' — comments will be returned as numbered objects, in addition lists of 'profiles' and 'groups' objects will be returned.
          #   @option arguments [Array] :fields List of additional profile fields to return. See the [vk.com/dev/fields|details]
          #   @return [Market::Methods::GetComments]

          # @!group Arguments

          # @return [Integer] ID of an item owner community
          attribute :owner_id, API::Types::Coercible::Int
          # @return [Integer] Item ID.
          attribute :item_id, API::Types::Coercible::Int
          # @return [Boolean] '1' — to return likes info.
          attribute :need_likes, API::Types::Bool.optional.default(nil)
          # @return [Integer] ID of a comment to start a list from (details below).
          attribute :start_comment_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of results to return.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] Sort order ('asc' — from old to new, 'desc' — from new to old)
          attribute :sort, API::Types::Coercible::String.optional.default(nil)
          # @return [Boolean] '1' — comments will be returned as numbered objects, in addition lists of 'profiles' and 'groups' objects will be returned.
          attribute :extended, API::Types::Bool.optional.default(nil)
          # @return [Array] List of additional profile fields to return. See the [vk.com/dev/fields|details]
          attribute :fields, API::Types::Coercible::Array.optional.default(nil)
        end
      end
    end
  end
end
