# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # Returns information specifying whether a user is a member of a community.
        class IsMember < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'groups.isMember'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :group_id ID or screen name of the community.
          #   @option arguments [Integer] :user_id User ID.
          #   @option arguments [Array] :user_ids User IDs.
          #   @option arguments [Boolean] :extended '1' — to return an extended response with additional fields.; By default: '0'.
          #   @return [Groups::Methods::IsMember]

          # @!group Arguments

          # @return [String] ID or screen name of the community.
          attribute :group_id, API::Types::Coercible::String
          # @return [Integer] User ID.
          attribute :user_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Array] User IDs.
          attribute :user_ids, API::Types::Coercible::Array.member(API::Types::Coercible::Int).optional.default(nil)
          # @return [Boolean] '1' — to return an extended response with additional fields.; By default: '0'.
          attribute :extended, API::Types::Form::Bool.optional.default(nil)
        end
      end
    end
  end
end
