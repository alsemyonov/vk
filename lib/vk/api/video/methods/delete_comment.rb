# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Methods
        # Deletes a comment on a video.
        class DeleteComment < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'video.deleteComment'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the video.
          #   @option arguments [Integer] :comment_id ID of the comment to be deleted.
          #   @return [Video::Methods::DeleteComment]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the video.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] ID of the comment to be deleted.
          attribute :comment_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
