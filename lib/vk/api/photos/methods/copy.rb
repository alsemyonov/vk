# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Allows to copy a photo to the "Saved photos" album
        class Copy < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.copy'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id photo's owner ID
          #   @option arguments [Integer] :photo_id photo ID
          #   @option arguments [String] :access_key for private photos
          #   @return [Photos::Methods::Copy]

          # @!group Arguments

          # @return [Integer] photo's owner ID
          attribute :owner_id, API::Types::Coercible::Int
          # @return [Integer] photo ID
          attribute :photo_id, API::Types::Coercible::Int
          # @return [String] for private photos
          attribute :access_key, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
