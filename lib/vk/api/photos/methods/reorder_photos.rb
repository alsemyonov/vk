# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Reorders the photo in the list of photos of the user album.
        class ReorderPhotos < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.reorderPhotos'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the photo.
          #   @option arguments [Integer] :photo_id Photo ID.
          #   @option arguments [Integer] :before ID of the photo before which the photo in question shall be placed.
          #   @option arguments [Integer] :after ID of the photo after which the photo in question shall be placed.
          #   @return [Photos::Methods::ReorderPhotos]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the photo.
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [Integer] Photo ID.
          attribute :photo_id, API::Types::Coercible::Int.optional
          # @return [Integer] ID of the photo before which the photo in question shall be placed.
          attribute :before, API::Types::Coercible::Int.optional
          # @return [Integer] ID of the photo after which the photo in question shall be placed.
          attribute :after, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
