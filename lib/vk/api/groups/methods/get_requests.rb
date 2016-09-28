# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # Returns a list of requests to the community.
        class GetRequests < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'groups.getRequests'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of results.
          #   @option arguments [Integer] :count Number of results to return.
          #   @option arguments [Array] :fields Profile fields to return.;
          #   @return [Groups::Methods::GetRequests]

          # @!group Arguments

          # @return [Integer] Community ID.
          attribute :group_id, API::Types::Coercible::Int.optional
          # @return [Integer] Offset needed to return a specific subset of results.
          attribute :offset, API::Types::Coercible::Int.optional
          # @return [Integer] Number of results to return.
          attribute :count, API::Types::Coercible::Int.optional
          # @return [Array] Profile fields to return.;
          attribute :fields, API::Types::Coercible::Array.optional
        end
      end
    end
  end
end
