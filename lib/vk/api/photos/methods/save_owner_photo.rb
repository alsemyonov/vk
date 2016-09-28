# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Saves  a profile or community photo.
        class SaveOwnerPhoto < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.saveOwnerPhoto'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :server parameter returned after .
          #   @option arguments [String] :hash parameter returned after .
          #   @option arguments [String] :photo parameter returned after .
          #   @return [Photos::Methods::SaveOwnerPhoto]

          # @!group Arguments

          # @return [String] parameter returned after .
          attribute :server, API::Types::Coercible::String.optional
          # @return [String] parameter returned after .
          attribute :hash, API::Types::Coercible::String.optional
          # @return [String] parameter returned after .
          attribute :photo, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
