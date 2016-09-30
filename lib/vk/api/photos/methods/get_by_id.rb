# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Returns information about photos by their IDs.
        class GetById < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'photos.getById'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :photos IDs separated with a comma, that are IDs of users who posted photos and IDs of photos themselves with an underscore character between such IDs. To get information about a photo in the group album, you shall specify group ID instead of user ID. Example:; "1_129207899,6492_135055734, ; -20629724_271945303"
          #   @option arguments [Boolean] :extended '1' — to return additional fields; '0' — (default)
          #   @option arguments [Boolean] :photo_sizes '1' — to return photo sizes in a
          #   @return [Photos::Methods::GetById]

          # @!group Arguments

          # @return [Array] IDs separated with a comma, that are IDs of users who posted photos and IDs of photos themselves with an underscore character between such IDs. To get information about a photo in the group album, you shall specify group ID instead of user ID. Example:; "1_129207899,6492_135055734, ; -20629724_271945303"
          attribute :photos, API::Types::Coercible::Array.member(API::Types::Coercible::String)
          # @return [Boolean] '1' — to return additional fields; '0' — (default)
          attribute :extended, API::Types::Form::Bool.optional.default(nil)
          # @return [Boolean] '1' — to return photo sizes in a
          attribute :photo_sizes, API::Types::Form::Bool.optional.default(nil)
        end
      end
    end
  end
end
