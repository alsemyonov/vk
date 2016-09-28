# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Docs < Vk::Schema::Namespace
      module Methods
        # Returns information about documents by their IDs.
        class GetById < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'docs.getById'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :docs Document IDs. Example: ; "66748_91488,66748_91455";
          #   @return [Docs::Methods::GetById]

          # @!group Arguments

          # @return [Array] Document IDs. Example: ; "66748_91488,66748_91455";
          attribute :docs, API::Types::Coercible::Array.optional
        end
      end
    end
  end
end
