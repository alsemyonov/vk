# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # Allows to reorder links in the community.
        class ReorderLink < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'groups.reorderLink'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID.
          #   @option arguments [Integer] :link_id Link ID.
          #   @option arguments [Integer] :after ID of the link after which to place the link with 'link_id'.
          #   @return [Groups::Methods::ReorderLink]

          # @!group Arguments

          # @return [Integer] Community ID.
          attribute :group_id, API::Types::Coercible::Int
          # @return [Integer] Link ID.
          attribute :link_id, API::Types::Coercible::Int
          # @return [Integer] ID of the link after which to place the link with 'link_id'.
          attribute :after, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
