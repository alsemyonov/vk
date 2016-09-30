# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Returns a list of comments on a specific photo album or all albums of the user sorted in reverse chronological order.
        class GetAllComments < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.getAllComments'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the album(s).
          #   @option arguments [Integer] :album_id Album ID. If the parameter is not set, comments on all of the user's albums will be returned.
          #   @option arguments [Boolean] :need_likes '1' — to return an additional 'likes' field; '0' — (default)
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of comments. By default, '0'.
          #   @option arguments [Integer] :count Number of comments to return. By default, '20'. Maximum value, '100'.
          #   @return [Photos::Methods::GetAllComments]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the album(s).
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Album ID. If the parameter is not set, comments on all of the user's albums will be returned.
          attribute :album_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] '1' — to return an additional 'likes' field; '0' — (default)
          attribute :need_likes, API::Types::Form::Bool.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of comments. By default, '0'.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of comments to return. By default, '20'. Maximum value, '100'.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
