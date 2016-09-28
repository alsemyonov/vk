# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Restores a deleted comment on a photo.
        class RestoreComment < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.restoreComment'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the photo.
          #   @option arguments [Integer] :comment_id ID of the deleted comment.
          #   @return [Photos::Methods::RestoreComment]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the photo.
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [Integer] ID of the deleted comment.
          attribute :comment_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
