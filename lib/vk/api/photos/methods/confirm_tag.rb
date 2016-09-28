# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Confirms a tag on a photo.
        class ConfirmTag < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.confirmTag'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the photo.
          #   @option arguments [String] :photo_id Photo ID.
          #   @option arguments [Integer] :tag_id Tag ID.
          #   @return [Photos::Methods::ConfirmTag]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the photo.
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [String] Photo ID.
          attribute :photo_id, API::Types::Coercible::String.optional
          # @return [Integer] Tag ID.
          attribute :tag_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
