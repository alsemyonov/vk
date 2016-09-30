# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # Returns a list of invitations to join communities and events.; ;
        class GetInvites < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'groups.getInvites'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of invitations.
          #   @option arguments [Integer] :count Number of invitations to return.
          #   @option arguments [Boolean] :extended '1' — to return additional  for communities..
          #   @return [Groups::Methods::GetInvites]

          # @!group Arguments

          # @return [Integer] Offset needed to return a specific subset of invitations.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of invitations to return.
          attribute :count, API::Types::Coercible::Int.optional.default(20)
          # @return [Boolean] '1' — to return additional  for communities..
          attribute :extended, API::Types::Form::Bool.optional.default(nil)
        end
      end
    end
  end
end
