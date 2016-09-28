# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Methods
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class AddToAlbum < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'video.addToAlbum'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :target_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Integer] :album_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Array] :album_ids @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Integer] :owner_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Integer] :video_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Video::Methods::AddToAlbum]

          # @!group Arguments

          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :target_id, API::Types::Coercible::Int.optional
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :album_id, API::Types::Coercible::Int.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :album_ids, API::Types::Coercible::Array.optional
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :video_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
