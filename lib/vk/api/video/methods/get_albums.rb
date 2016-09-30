# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Methods
        # Returns a list of video albums owned by a user or community.
        class GetAlbums < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'video.getAlbums'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the video album(s).
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of video albums.
          #   @option arguments [Integer] :count Number of video albums to return.
          #   @option arguments [Boolean] :extended '1' — to return additional information about album privacy settings for the current user
          #   @return [Video::Methods::GetAlbums]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the video album(s).
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of video albums.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of video albums to return.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] '1' — to return additional information about album privacy settings for the current user
          attribute :extended, API::Types::Bool.optional.default(nil)
        end
      end
    end
  end
end
