# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Returns a list of photos belonging to a user or community, in reverse chronological order.
        class GetAll < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.getAll'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of a user or community that owns the photos.; Use a negative value to designate a community ID.
          #   @option arguments [Boolean] :extended '1' — to return detailed information about photos
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of photos. By default, '0'.
          #   @option arguments [Integer] :count Number of photos to return.
          #   @option arguments [Boolean] :photo_sizes '1' – to return image sizes in .
          #   @option arguments [Boolean] :no_service_albums '1' – to return photos only from standard albums; '0' – to return all photos including those in service albums, e.g., 'My wall photos' (default)
          #   @option arguments [Boolean] :need_hidden '1' – to show information about photos being hidden from the block above the wall.
          #   @option arguments [Boolean] :skip_hidden '1' – not to return photos being hidden from the block above the wall. Works only with owner_id>0, no_service_albums is ignored.
          #   @return [Photos::Methods::GetAll]

          # @!group Arguments

          # @return [Integer] ID of a user or community that owns the photos.; Use a negative value to designate a community ID.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] '1' — to return detailed information about photos
          attribute :extended, API::Types::Form::Bool.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of photos. By default, '0'.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of photos to return.
          attribute :count, API::Types::Coercible::Int.optional.default(20)
          # @return [Boolean] '1' – to return image sizes in .
          attribute :photo_sizes, API::Types::Form::Bool.optional.default(nil)
          # @return [Boolean] '1' – to return photos only from standard albums; '0' – to return all photos including those in service albums, e.g., 'My wall photos' (default)
          attribute :no_service_albums, API::Types::Form::Bool.optional.default(nil)
          # @return [Boolean] '1' – to show information about photos being hidden from the block above the wall.
          attribute :need_hidden, API::Types::Form::Bool.optional.default(nil)
          # @return [Boolean] '1' – not to return photos being hidden from the block above the wall. Works only with owner_id>0, no_service_albums is ignored.
          attribute :skip_hidden, API::Types::Form::Bool.optional.default(nil)
        end
      end
    end
  end
end
