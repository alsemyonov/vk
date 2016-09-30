# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Deletes a photo.
        class Delete < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.delete'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the photo.
          #   @option arguments [Integer] :photo_id Photo ID.
          #   @return [Photos::Methods::Delete]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the photo.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Photo ID.
          attribute :photo_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
