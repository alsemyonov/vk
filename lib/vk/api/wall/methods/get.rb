# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      module Methods
        # Returns a list of posts on a user wall or community wall.
        class Get < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'wall.get'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the wall. By default, current user ID. Use a negative value to designate a community ID.
          #   @option arguments [String] :domain User or community short address.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of posts.
          #   @option arguments [Integer] :count Number of posts to return (maximum 100).
          #   @option arguments [String] :filter Filter to apply:; 'owner' — posts by the wall owner; 'others' — posts by someone else; 'all' — posts by the wall owner and others (default); 'postponed' — timed posts (only available for calls with an 'access_token'); 'suggests' — suggested posts on a community wall
          #   @option arguments [Boolean] :extended '1' — to return 'wall', 'profiles', and 'groups' fields; '0' — to return no additional fields (default)
          #   @option arguments [Array] :fields @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Wall::Methods::Get]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the wall. By default, current user ID. Use a negative value to designate a community ID.
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [String] User or community short address.
          attribute :domain, API::Types::Coercible::String.optional
          # @return [Integer] Offset needed to return a specific subset of posts.
          attribute :offset, API::Types::Coercible::Int.optional
          # @return [Integer] Number of posts to return (maximum 100).
          attribute :count, API::Types::Coercible::Int.optional
          # @return [String] Filter to apply:; 'owner' — posts by the wall owner; 'others' — posts by someone else; 'all' — posts by the wall owner and others (default); 'postponed' — timed posts (only available for calls with an 'access_token'); 'suggests' — suggested posts on a community wall
          attribute :filter, API::Types::Coercible::String.optional
          # @return [Boolean] '1' — to return 'wall', 'profiles', and 'groups' fields; '0' — to return no additional fields (default)
          attribute :extended, API::Types::Bool.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :fields, API::Types::Coercible::Array.optional
        end
      end
    end
  end
end
