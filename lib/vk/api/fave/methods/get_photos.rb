# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Fave < Vk::Schema::Namespace
      module Methods
        # Returns a list of photos that the current user has liked.; ;
        class GetPhotos < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'fave.getPhotos'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of photos.
          #   @option arguments [Integer] :count Number of photos to return.
          #   @option arguments [Boolean] :photo_sizes '1' — to return photo sizes in a .
          #   @return [Fave::Methods::GetPhotos]

          # @!group Arguments

          # @return [Integer] Offset needed to return a specific subset of photos.
          attribute :offset, API::Types::Coercible::Int.optional
          # @return [Integer] Number of photos to return.
          attribute :count, API::Types::Coercible::Int.optional
          # @return [Boolean] '1' — to return photo sizes in a .
          attribute :photo_sizes, API::Types::Bool.optional
        end
      end
    end
  end
end
