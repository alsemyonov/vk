# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # Allows to delete a link from the community.
        class DeleteLink < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'groups.deleteLink'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID.
          #   @option arguments [Integer] :link_id LInk ID.
          #   @return [Groups::Methods::DeleteLink]

          # @!group Arguments

          # @return [Integer] Community ID.
          attribute :group_id, API::Types::Coercible::Int
          # @return [Integer] LInk ID.
          attribute :link_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
