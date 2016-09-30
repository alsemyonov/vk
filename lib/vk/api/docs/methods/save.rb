# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Docs < Vk::Schema::Namespace
      module Methods
        # Saves a document after [https://vk.com/dev/upload_files_2?f=10.%2BUploading%2BDocuments|uploading it to a server].
        class Save < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'docs.save'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :file This parameter is returned when the file is [https://vk.com/dev/upload_files_2?f=10.%2BUploading%2BDocuments|uploaded to the server].
          #   @option arguments [String] :title Document title.
          #   @option arguments [String] :tags Document tags.
          #   @return [Docs::Methods::Save]

          # @!group Arguments

          # @return [String] This parameter is returned when the file is [https://vk.com/dev/upload_files_2?f=10.%2BUploading%2BDocuments|uploaded to the server].
          attribute :file, API::Types::Coercible::String
          # @return [String] Document title.
          attribute :title, API::Types::Coercible::String.optional.default(nil)
          # @return [String] Document tags.
          attribute :tags, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
