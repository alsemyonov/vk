# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Returns the server address for photo upload.
        class GetUploadServer < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.getUploadServer'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :album_id Album ID.
          #   @option arguments [Integer] :group_id ID of community that owns the album (if the photo will be uploaded to a community album).
          #   @return [Photos::Methods::GetUploadServer]

          # @!group Arguments

          # @return [Integer] Album ID.
          attribute :album_id, API::Types::Coercible::Int.optional
          # @return [Integer] ID of community that owns the album (if the photo will be uploaded to a community album).
          attribute :group_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
