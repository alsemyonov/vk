# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Fave < Vk::Schema::Namespace
      module Methods
        # Returns a list of wall posts that the current user has liked.;
        class GetPosts < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'fave.getPosts'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of posts.
          #   @option arguments [Integer] :count Number of posts to return.
          #   @option arguments [Boolean] :extended '1' — to return additional 'wall', 'profiles', and 'groups' fields.; ; By default: '0'.
          #   @return [Fave::Methods::GetPosts]

          # @!group Arguments

          # @return [Integer] Offset needed to return a specific subset of posts.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of posts to return.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] '1' — to return additional 'wall', 'profiles', and 'groups' fields.; ; By default: '0'.
          attribute :extended, API::Types::Bool.optional.default(nil)
        end
      end
    end
  end
end
