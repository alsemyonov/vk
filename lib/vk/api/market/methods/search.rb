# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Market < Vk::Schema::Namespace
      module Methods
        # Searches market items in a community's catalog
        class Search < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'market.search'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of an items owner community.
          #   @option arguments [String] :q Search query, for example "pink slippers".
          #   @option arguments [Integer] :price_from Minimum item price value.
          #   @option arguments [Integer] :price_to Maximum item price value.
          #   @option arguments [Array] :tags Comma-separated tag IDs list.
          #   @option arguments [Integer] :rev '0' — do not use reverse order, '1' — use reverse order
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of results.
          #   @option arguments [Integer] :count Number of items to return.
          #   @option arguments [Boolean] :extended '1' – to return additional fields: 'likes, can_comment, car_repost, photos'. By default: '0'.
          #   @return [Market::Methods::Search]

          # @!group Arguments

          # @return [Integer] ID of an items owner community.
          attribute :owner_id, API::Types::Coercible::Int
          # @return [String] Search query, for example "pink slippers".
          attribute :q, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] Minimum item price value.
          attribute :price_from, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Maximum item price value.
          attribute :price_to, API::Types::Coercible::Int.optional.default(nil)
          # @return [Array] Comma-separated tag IDs list.
          attribute :tags, API::Types::Coercible::Array.member(API::Types::Coercible::Int).optional.default(nil)
          # @return [Integer] '0' — do not use reverse order, '1' — use reverse order
          attribute :rev, API::Types::Coercible::Int.enum(0, 1).optional.default(1)
          # @return [Integer] Offset needed to return a specific subset of results.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of items to return.
          attribute :count, API::Types::Coercible::Int.optional.default(20)
          # @return [Boolean] '1' – to return additional fields: 'likes, can_comment, car_repost, photos'. By default: '0'.
          attribute :extended, API::Types::Form::Bool.optional.default(false)
        end
      end
    end
  end
end
