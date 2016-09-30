# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Returns a list of a user's or community's photo albums.
        class GetAlbums < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'photos.getAlbums'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the albums.
          #   @option arguments [Array] :album_ids Album IDs.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of albums.
          #   @option arguments [Integer] :count Number of albums to return.
          #   @option arguments [Boolean] :need_system '1' — to return system albums with negative IDs
          #   @option arguments [Boolean] :need_covers '1' — to return an additional 'thumb_src' field; '0' — (default)
          #   @option arguments [Boolean] :photo_sizes '1' — to return photo sizes in a
          #   @return [Photos::Methods::GetAlbums]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the albums.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Array] Album IDs.
          attribute :album_ids, API::Types::Coercible::Array.member(API::Types::Coercible::Int).optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of albums.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of albums to return.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] '1' — to return system albums with negative IDs
          attribute :need_system, API::Types::Form::Bool.optional.default(nil)
          # @return [Boolean] '1' — to return an additional 'thumb_src' field; '0' — (default)
          attribute :need_covers, API::Types::Form::Bool.optional.default(nil)
          # @return [Boolean] '1' — to return photo sizes in a
          attribute :photo_sizes, API::Types::Form::Bool.optional.default(nil)
        end
      end
    end
  end
end
