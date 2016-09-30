# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Friends < Vk::Schema::Namespace
      module Methods
        # Returns a list of user IDs of a user's friends who are online.
        class GetOnline < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'friends.getOnline'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id User ID.
          #   @option arguments [Integer] :list_id Friend list ID. If this parameter is not set, information about all online friends is returned.
          #   @option arguments [Boolean] :online_mobile '1' — to return an additional 'online_mobile' field; '0' — (default);
          #   @option arguments [String] :order Sort order:; 'random' — random order
          #   @option arguments [Integer] :count Number of friends to return.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of friends.
          #   @return [Friends::Methods::GetOnline]

          # @!group Arguments

          # @return [Integer] User ID.
          attribute :user_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Friend list ID. If this parameter is not set, information about all online friends is returned.
          attribute :list_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] '1' — to return an additional 'online_mobile' field; '0' — (default);
          attribute :online_mobile, API::Types::Form::Bool.optional.default(nil)
          # @return [String] Sort order:; 'random' — random order
          attribute :order, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] Number of friends to return.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of friends.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
