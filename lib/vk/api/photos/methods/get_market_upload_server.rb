# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Returns the server address for market photo upload.
        class GetMarketUploadServer < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.getMarketUploadServer'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID.
          #   @option arguments [Boolean] :main_photo '1' if you want to upload the main item photo.
          #   @option arguments [Integer] :crop_x X coordinate of the crop left upper corner.
          #   @option arguments [Integer] :crop_y Y coordinate of the crop left upper corner.
          #   @option arguments [Integer] :crop_width Width of the cropped photo in px.
          #   @return [Photos::Methods::GetMarketUploadServer]

          # @!group Arguments

          # @return [Integer] Community ID.
          attribute :group_id, API::Types::Coercible::Int.optional
          # @return [Boolean] '1' if you want to upload the main item photo.
          attribute :main_photo, API::Types::Bool.optional
          # @return [Integer] X coordinate of the crop left upper corner.
          attribute :crop_x, API::Types::Coercible::Int.optional
          # @return [Integer] Y coordinate of the crop left upper corner.
          attribute :crop_y, API::Types::Coercible::Int.optional
          # @return [Integer] Width of the cropped photo in px.
          attribute :crop_width, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
