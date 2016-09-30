# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Returns a list of photos in which a user is tagged.
        class GetUserPhotos < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.getUserPhotos'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id User ID.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of photos. By default, '0'.
          #   @option arguments [Integer] :count Number of photos to return. Maximum value is 100.
          #   @option arguments [Boolean] :extended '1' — to return an additional 'likes' field; '0' — (default)
          #   @option arguments [String] :sort Sort order:; '1' — by date the tag was added in ascending order; '0' — by date the tag was added in descending order
          #   @return [Photos::Methods::GetUserPhotos]

          # @!group Arguments

          # @return [Integer] User ID.
          attribute :user_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of photos. By default, '0'.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of photos to return. Maximum value is 100.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] '1' — to return an additional 'likes' field; '0' — (default)
          attribute :extended, API::Types::Bool.optional.default(nil)
          # @return [String] Sort order:; '1' — by date the tag was added in ascending order; '0' — by date the tag was added in descending order
          attribute :sort, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
