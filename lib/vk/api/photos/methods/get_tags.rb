# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Returns a list of tags on a photo.
        class GetTags < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.getTags'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the photo.
          #   @option arguments [Integer] :photo_id Photo ID.
          #   @option arguments [String] :access_key @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Photos::Methods::GetTags]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the photo.
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [Integer] Photo ID.
          attribute :photo_id, API::Types::Coercible::Int.optional
          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :access_key, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
