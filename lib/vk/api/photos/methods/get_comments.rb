# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Returns a list of comments on a photo.
        class GetComments < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.getComments'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the photo.
          #   @option arguments [Integer] :photo_id Photo ID.
          #   @option arguments [Boolean] :need_likes '1' — to return an additional 'likes' field; '0' — (default)
          #   @option arguments [Integer] :start_comment_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of comments. By default, '0'.
          #   @option arguments [Integer] :count Number of comments to return.
          #   @option arguments [String] :sort Sort order:; 'asc' — old first; 'desc' — new first
          #   @option arguments [String] :access_key @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Boolean] :extended @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Array] :fields @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Photos::Methods::GetComments]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the photo.
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [Integer] Photo ID.
          attribute :photo_id, API::Types::Coercible::Int.optional
          # @return [Boolean] '1' — to return an additional 'likes' field; '0' — (default)
          attribute :need_likes, API::Types::Bool.optional
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :start_comment_id, API::Types::Coercible::Int.optional
          # @return [Integer] Offset needed to return a specific subset of comments. By default, '0'.
          attribute :offset, API::Types::Coercible::Int.optional
          # @return [Integer] Number of comments to return.
          attribute :count, API::Types::Coercible::Int.optional
          # @return [String] Sort order:; 'asc' — old first; 'desc' — new first
          attribute :sort, API::Types::Coercible::String.optional
          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :access_key, API::Types::Coercible::String.optional
          # @return [Boolean] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :extended, API::Types::Bool.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :fields, API::Types::Coercible::Array.optional
        end
      end
    end
  end
end
