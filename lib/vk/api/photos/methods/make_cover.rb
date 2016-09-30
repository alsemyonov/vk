# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Makes a photo into an album cover.
        class MakeCover < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.makeCover'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the photo.
          #   @option arguments [Integer] :photo_id Photo ID.
          #   @option arguments [Integer] :album_id Album ID.
          #   @return [Photos::Methods::MakeCover]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the photo.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Photo ID.
          attribute :photo_id, API::Types::Coercible::Int
          # @return [Integer] Album ID.
          attribute :album_id, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
