# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Docs < Vk::Schema::Namespace
      module Methods
        # Returns detailed information about user or community documents.
        class Get < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'docs.get'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :count Number of documents to return. By default, all documents.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of documents.
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the documents. Use a negative value to designate a community ID.
          #   @return [Docs::Methods::Get]

          # @!group Arguments

          # @return [Integer] Number of documents to return. By default, all documents.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of documents.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] ID of the user or community that owns the documents. Use a negative value to designate a community ID.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
