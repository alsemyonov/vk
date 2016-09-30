# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Deletes a comment on the photo.
        class DeleteComment < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.deleteComment'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the photo.
          #   @option arguments [Integer] :comment_id Comment ID.
          #   @return [Photos::Methods::DeleteComment]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the photo.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Comment ID.
          attribute :comment_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
