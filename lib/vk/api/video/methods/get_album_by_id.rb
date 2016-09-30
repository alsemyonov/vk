# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Methods
        # Returns video album info
        class GetAlbumById < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'video.getAlbumById'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id identifier of a user or community to add a video to. ; Use a negative value to designate a community ID.
          #   @option arguments [Integer] :album_id album ID.
          #   @return [Video::Methods::GetAlbumById]

          # @!group Arguments

          # @return [Integer] identifier of a user or community to add a video to. ; Use a negative value to designate a community ID.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] album ID.
          attribute :album_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
