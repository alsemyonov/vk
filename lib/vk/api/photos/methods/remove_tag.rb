# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Removes a tag from a photo.
        class RemoveTag < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.removeTag'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the photo.
          #   @option arguments [Integer] :photo_id Photo ID.
          #   @option arguments [Integer] :tag_id Tag ID.
          #   @return [Photos::Methods::RemoveTag]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the photo.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Photo ID.
          attribute :photo_id, API::Types::Coercible::Int
          # @return [Integer] Tag ID.
          attribute :tag_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
