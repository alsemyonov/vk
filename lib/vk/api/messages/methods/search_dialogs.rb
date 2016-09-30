# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      module Methods
        # Returns a list of the current user's conversations that match search criteria.
        class SearchDialogs < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'messages.searchDialogs'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :q Search query string.
          #   @option arguments [Integer] :limit Maximum number of results.
          #   @option arguments [Array] :fields Profile fields to return.;
          #   @return [Messages::Methods::SearchDialogs]

          # @!group Arguments

          # @return [String] Search query string.
          attribute :q, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] Maximum number of results.
          attribute :limit, API::Types::Coercible::Int.optional.default(20)
          # @return [Array] Profile fields to return.;
          attribute :fields, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
        end
      end
    end
  end
end
