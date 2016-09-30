# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # Returns a list of the communities to which a user belongs.; ;
        class Get < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'groups.get'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id User ID.
          #   @option arguments [Boolean] :extended '1' — to return complete information about a user's communities; '0' — to return a list of community IDs without any additional fields (default);
          #   @option arguments [Array] :filter Types of communities to return:; 'admin' — to return communities administered by the user ; 'editor' — to return communities where the user is an administrator or editor; 'moder' — to return communities where the user is an administrator, editor, or moderator; 'groups' — to return only groups; 'publics' — to return only public pages; 'events' — to return only events
          #   @option arguments [Array] :fields Profile fields to return.;
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of communities.
          #   @option arguments [Integer] :count Number of communities to return.
          #   @return [Groups::Methods::Get]

          # @!group Arguments

          # @return [Integer] User ID.
          attribute :user_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] '1' — to return complete information about a user's communities; '0' — to return a list of community IDs without any additional fields (default);
          attribute :extended, API::Types::Form::Bool.optional.default(nil)
          # @return [Array] Types of communities to return:; 'admin' — to return communities administered by the user ; 'editor' — to return communities where the user is an administrator or editor; 'moder' — to return communities where the user is an administrator, editor, or moderator; 'groups' — to return only groups; 'publics' — to return only public pages; 'events' — to return only events
          attribute :filter, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
          # @return [Array] Profile fields to return.;
          attribute :fields, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of communities.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of communities to return.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
