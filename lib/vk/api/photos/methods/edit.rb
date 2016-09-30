# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Edits the caption of a photo.
        class Edit < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.edit'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the photo.
          #   @option arguments [Integer] :photo_id Photo ID.
          #   @option arguments [String] :caption New caption for the photo. If this parameter is not set, it is considered to be equal to an empty string.
          #   @option arguments [Number] :latitude @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Number] :longitude @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [String] :place_str @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [String] :foursquare_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Boolean] :delete_place @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Photos::Methods::Edit]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the photo.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Photo ID.
          attribute :photo_id, API::Types::Coercible::Int
          # @return [String] New caption for the photo. If this parameter is not set, it is considered to be equal to an empty string.
          attribute :caption, API::Types::Coercible::String.optional.default(nil)
          # @return [Number] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :latitude, API::Types::Coercible::Int.optional.default(nil)
          # @return [Number] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :longitude, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :place_str, API::Types::Coercible::String.optional.default(nil)
          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :foursquare_id, API::Types::Coercible::String.optional.default(nil)
          # @return [Boolean] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :delete_place, API::Types::Form::Bool.optional.default(nil)
        end
      end
    end
  end
end
