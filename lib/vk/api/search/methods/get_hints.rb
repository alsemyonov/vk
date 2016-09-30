# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Search < Vk::Schema::Namespace
      module Methods
        # Allows the programmer to do a quick search for any substring.
        class GetHints < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'search.getHints'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :q Search query string.
          #   @option arguments [Integer] :limit Maximum number of results to return.
          #   @option arguments [Array] :filters 
          #   @option arguments [Boolean] :search_global 
          #   @return [Search::Methods::GetHints]

          # @!group Arguments

          # @return [String] Search query string.
          attribute :q, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] Maximum number of results to return.
          attribute :limit, API::Types::Coercible::Int.optional.default(9)
          # @return [Array] 
          attribute :filters, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
          # @return [Boolean] 
          attribute :search_global, API::Types::Form::Bool.optional.default(true)
        end
      end
    end
  end
end
