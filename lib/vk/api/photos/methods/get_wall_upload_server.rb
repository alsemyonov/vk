# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Returns the server address for photo upload onto a user's wall.
        class GetWallUploadServer < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.getWallUploadServer'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id ID of community to whose wall the photo will be uploaded.
          #   @return [Photos::Methods::GetWallUploadServer]

          # @!group Arguments

          # @return [Integer] ID of community to whose wall the photo will be uploaded.
          attribute :group_id, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
