# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Returns a list of photos with tags that have not been viewed.
        class GetNewTags < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.getNewTags'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of photos.
          #   @option arguments [Integer] :count Number of photos to return.
          #   @return [Photos::Methods::GetNewTags]

          # @!group Arguments

          # @return [Integer] Offset needed to return a specific subset of photos.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of photos to return.
          attribute :count, API::Types::Coercible::Int.optional.default(20)
        end
      end
    end
  end
end
