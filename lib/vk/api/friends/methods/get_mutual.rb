# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Friends < Vk::Schema::Namespace
      module Methods
        # Returns a list of user IDs of the mutual friends of two users.
        class GetMutual < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'friends.getMutual'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :source_uid ID of the user whose friends will be checked against the friends of the user specified in 'target_uid'.
          #   @option arguments [Integer] :target_uid ID of the user whose friends will be checked against the friends of the user specified in 'source_uid'.
          #   @option arguments [Array] :target_uids IDs of the users whose friends will be checked against the friends of the user specified in 'source_uid'.
          #   @option arguments [String] :order Sort order:; 'random' — random order
          #   @option arguments [Integer] :count Number of mutual friends to return.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of mutual friends.
          #   @return [Friends::Methods::GetMutual]

          # @!group Arguments

          # @return [Integer] ID of the user whose friends will be checked against the friends of the user specified in 'target_uid'.
          attribute :source_uid, API::Types::Coercible::Int.optional
          # @return [Integer] ID of the user whose friends will be checked against the friends of the user specified in 'source_uid'.
          attribute :target_uid, API::Types::Coercible::Int.optional
          # @return [Array] IDs of the users whose friends will be checked against the friends of the user specified in 'source_uid'.
          attribute :target_uids, API::Types::Coercible::Array.optional
          # @return [String] Sort order:; 'random' — random order
          attribute :order, API::Types::Coercible::String.optional
          # @return [Integer] Number of mutual friends to return.
          attribute :count, API::Types::Coercible::Int.optional
          # @return [Integer] Offset needed to return a specific subset of mutual friends.
          attribute :offset, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
