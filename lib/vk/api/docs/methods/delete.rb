# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Docs < Vk::Schema::Namespace
      module Methods
        # Deletes a user or community document.
        class Delete < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'docs.delete'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the document. Use a negative value to designate a community ID.
          #   @option arguments [Integer] :doc_id Document ID.
          #   @return [Docs::Methods::Delete]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the document. Use a negative value to designate a community ID.
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [Integer] Document ID.
          attribute :doc_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
