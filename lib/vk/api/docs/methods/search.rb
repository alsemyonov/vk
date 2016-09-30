# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Docs < Vk::Schema::Namespace
      module Methods
        # Returns a list of documents matching the search criteria.
        class Search < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'docs.search'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :q Search query string.
          #   @option arguments [Integer] :count Number of results to return.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of results.
          #   @return [Docs::Methods::Search]

          # @!group Arguments

          # @return [String] Search query string.
          attribute :q, API::Types::Coercible::String
          # @return [Integer] Number of results to return.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of results.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
