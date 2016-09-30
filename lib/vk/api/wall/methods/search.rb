# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      module Methods
        # Allows to search posts on user or community walls.
        class Search < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'wall.search'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id user or community id. ; "Remember that for a community 'owner_id' must be negative."
          #   @option arguments [String] :domain user or community screen name.
          #   @option arguments [String] :query search query string.
          #   @option arguments [Boolean] :owners_only '1' – returns only page owner's posts.
          #   @option arguments [Integer] :count count of posts to return.
          #   @option arguments [Boolean] :extended show extended post info.
          #   @option arguments [Array] :fields @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Wall::Methods::Search]

          # @!group Arguments

          # @return [Integer] user or community id. ; "Remember that for a community 'owner_id' must be negative."
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] user or community screen name.
          attribute :domain, API::Types::Coercible::String.optional.default(nil)
          # @return [String] search query string.
          attribute :query, API::Types::Coercible::String.optional.default(nil)
          # @return [Boolean] '1' – returns only page owner's posts.
          attribute :owners_only, API::Types::Form::Bool.optional.default(nil)
          # @return [Integer] count of posts to return.
          attribute :count, API::Types::Coercible::Int.optional.default(20)
          # @return [Boolean] show extended post info.
          attribute :extended, API::Types::Form::Bool.optional.default(nil)
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :fields, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
        end
      end
    end
  end
end
