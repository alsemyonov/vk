# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Edits information about a photo album.
        class EditAlbum < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.editAlbum'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :album_id ID of the photo album to be edited.
          #   @option arguments [String] :title New album title.
          #   @option arguments [String] :description New album description.
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the album.
          #   @option arguments [Array] :privacy_view @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Array] :privacy_comment @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Boolean] :upload_by_admins_only @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Boolean] :comments_disabled @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Photos::Methods::EditAlbum]

          # @!group Arguments

          # @return [Integer] ID of the photo album to be edited.
          attribute :album_id, API::Types::Coercible::Int
          # @return [String] New album title.
          attribute :title, API::Types::Coercible::String.optional.default(nil)
          # @return [String] New album description.
          attribute :description, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] ID of the user or community that owns the album.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :privacy_view, API::Types::Coercible::Array.optional.default(nil)
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :privacy_comment, API::Types::Coercible::Array.optional.default(nil)
          # @return [Boolean] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :upload_by_admins_only, API::Types::Bool.optional.default(nil)
          # @return [Boolean] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :comments_disabled, API::Types::Bool.optional.default(nil)
        end
      end
    end
  end
end
