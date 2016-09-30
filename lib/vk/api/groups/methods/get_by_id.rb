# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # Returns information about communities by their IDs.
        class GetById < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'groups.getById'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :group_ids IDs or screen names of communities.
          #   @option arguments [String] :group_id ID or screen name of the community.
          #   @option arguments [Array] :fields Group fields to return.;
          #   @return [Groups::Methods::GetById]

          # @!group Arguments

          # @return [Array] IDs or screen names of communities.
          attribute :group_ids, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
          # @return [String] ID or screen name of the community.
          attribute :group_id, API::Types::Coercible::String.optional.default(nil)
          # @return [Array] Group fields to return.;
          attribute :fields, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
        end
      end
    end
  end
end
