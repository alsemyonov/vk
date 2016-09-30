# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Returns the server address for market album photo upload.
        class GetMarketAlbumUploadServer < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.getMarketAlbumUploadServer'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID.
          #   @return [Photos::Methods::GetMarketAlbumUploadServer]

          # @!group Arguments

          # @return [Integer] Community ID.
          attribute :group_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
