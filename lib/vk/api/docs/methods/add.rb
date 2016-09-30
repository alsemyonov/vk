# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Docs < Vk::Schema::Namespace
      module Methods
        # Copies a document to a user's or community's document list.
        class Add < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'docs.add'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the document. Use a negative value to designate a community ID.
          #   @option arguments [Integer] :doc_id Document ID.
          #   @option arguments [String] :access_key Access key. This parameter is required if 'access_key' was returned with the document's data.
          #   @return [Docs::Methods::Add]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the document. Use a negative value to designate a community ID.
          attribute :owner_id, API::Types::Coercible::Int
          # @return [Integer] Document ID.
          attribute :doc_id, API::Types::Coercible::Int
          # @return [String] Access key. This parameter is required if 'access_key' was returned with the document's data.
          attribute :access_key, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
