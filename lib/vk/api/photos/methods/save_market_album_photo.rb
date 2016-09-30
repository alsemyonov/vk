# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Saves market album photos after successful uploading.
        class SaveMarketAlbumPhoto < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.saveMarketAlbumPhoto'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID.
          #   @option arguments [String] :photo Parameter returned when photos are .
          #   @option arguments [Integer] :server Parameter returned when photos are .
          #   @option arguments [String] :hash Parameter returned when photos are .
          #   @return [Photos::Methods::SaveMarketAlbumPhoto]

          # @!group Arguments

          # @return [Integer] Community ID.
          attribute :group_id, API::Types::Coercible::Int
          # @return [String] Parameter returned when photos are .
          attribute :photo, API::Types::Coercible::String
          # @return [Integer] Parameter returned when photos are .
          attribute :server, API::Types::Coercible::Int
          # @return [String] Parameter returned when photos are .
          attribute :hash, API::Types::Coercible::String
        end
      end
    end
  end
end
