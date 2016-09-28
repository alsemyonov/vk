# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Moves a photo from one album to another.
        class Move < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.move'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the photo.
          #   @option arguments [Integer] :target_album_id ID of the album to which the photo will be moved.
          #   @option arguments [Integer] :photo_id Photo ID.
          #   @return [Photos::Methods::Move]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the photo.
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [Integer] ID of the album to which the photo will be moved.
          attribute :target_album_id, API::Types::Coercible::Int.optional
          # @return [Integer] Photo ID.
          attribute :photo_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
