# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Docs < Vk::Schema::Namespace
      module Methods
        # Edits a document.
        class Edit < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'docs.edit'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id User ID or community ID. Use a negative value to designate a community ID.
          #   @option arguments [Integer] :doc_id Document ID.
          #   @option arguments [String] :title Document title.
          #   @option arguments [Array] :tags Document tags.
          #   @return [Docs::Methods::Edit]

          # @!group Arguments

          # @return [Integer] User ID or community ID. Use a negative value to designate a community ID.
          attribute :owner_id, API::Types::Coercible::Int
          # @return [Integer] Document ID.
          attribute :doc_id, API::Types::Coercible::Int
          # @return [String] Document title.
          attribute :title, API::Types::Coercible::String.optional.default(nil)
          # @return [Array] Document tags.
          attribute :tags, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
        end
      end
    end
  end
end
