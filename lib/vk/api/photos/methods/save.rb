# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Saves photos after successful uploading.
        class Save < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.save'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :album_id ID of the album to save photos to.
          #   @option arguments [Integer] :group_id ID of the community to save photos to.
          #   @option arguments [Integer] :server Parameter returned when .
          #   @option arguments [String] :photos_list Parameter returned when .
          #   @option arguments [String] :hash Parameter returned when .
          #   @option arguments [Number] :latitude Geographical latitude, in degrees (from '-90' to '90').
          #   @option arguments [Number] :longitude Geographical longitude, in degrees (from '-180' to '180').
          #   @option arguments [String] :caption Text describing the photo. 2048 digits max.
          #   @return [Photos::Methods::Save]

          # @!group Arguments

          # @return [Integer] ID of the album to save photos to.
          attribute :album_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] ID of the community to save photos to.
          attribute :group_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Parameter returned when .
          attribute :server, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] Parameter returned when .
          attribute :photos_list, API::Types::Coercible::String.optional.default(nil)
          # @return [String] Parameter returned when .
          attribute :hash, API::Types::Coercible::String.optional.default(nil)
          # @return [Number] Geographical latitude, in degrees (from '-90' to '90').
          attribute :latitude, API::Types::Coercible::Int.optional.default(nil)
          # @return [Number] Geographical longitude, in degrees (from '-180' to '180').
          attribute :longitude, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] Text describing the photo. 2048 digits max.
          attribute :caption, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
