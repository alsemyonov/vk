# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Docs < Vk::Schema::Namespace
      module Methods
        # Returns the server address for document upload onto a user's or community's wall.
        class GetWallUploadServer < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'docs.getWallUploadServer'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID (if the document will be uploaded to the community).
          #   @return [Docs::Methods::GetWallUploadServer]

          # @!group Arguments

          # @return [Integer] Community ID (if the document will be uploaded to the community).
          attribute :group_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
