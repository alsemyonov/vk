# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Returns the number of photo albums belonging to a user or community.
        class GetAlbumsCount < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.getAlbumsCount'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id User ID.
          #   @option arguments [Integer] :group_id Community ID.
          #   @return [Photos::Methods::GetAlbumsCount]

          # @!group Arguments

          # @return [Integer] User ID.
          attribute :user_id, API::Types::Coercible::Int.optional
          # @return [Integer] Community ID.
          attribute :group_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
