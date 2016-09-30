# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      module Methods
        # Returns a list of comments on a post on a user wall or community wall.
        class GetComments < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'wall.getComments'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id User ID or community ID. Use a negative value to designate a community ID.
          #   @option arguments [Integer] :post_id Post ID.
          #   @option arguments [Boolean] :need_likes '1' — to return the 'likes' field; '0'  — not to return the 'likes' field (default)
          #   @option arguments [Integer] :start_comment_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of comments.
          #   @option arguments [Integer] :count Number of comments to return (maximum 100).
          #   @option arguments [String] :sort Sort order:; 'asc' — chronological; 'desc' — reverse chronological
          #   @option arguments [Integer] :preview_length Number of characters at which to truncate comments when previewed. By default, '90'. Specify '0' if you do not want to truncate comments.;
          #   @option arguments [Boolean] :extended @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Wall::Methods::GetComments]

          # @!group Arguments

          # @return [Integer] User ID or community ID. Use a negative value to designate a community ID.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Post ID.
          attribute :post_id, API::Types::Coercible::Int
          # @return [Boolean] '1' — to return the 'likes' field; '0'  — not to return the 'likes' field (default)
          attribute :need_likes, API::Types::Form::Bool.optional.default(nil)
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :start_comment_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of comments.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of comments to return (maximum 100).
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] Sort order:; 'asc' — chronological; 'desc' — reverse chronological
          attribute :sort, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] Number of characters at which to truncate comments when previewed. By default, '90'. Specify '0' if you do not want to truncate comments.;
          attribute :preview_length, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :extended, API::Types::Form::Bool.optional.default(nil)
        end
      end
    end
  end
end
