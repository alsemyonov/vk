# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # Allows to edit a link in the community.
        class EditLink < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'groups.editLink'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID.
          #   @option arguments [Integer] :link_id Link ID.
          #   @option arguments [String] :text New description text for the link.
          #   @return [Groups::Methods::EditLink]

          # @!group Arguments

          # @return [Integer] Community ID.
          attribute :group_id, API::Types::Coercible::Int.optional
          # @return [Integer] Link ID.
          attribute :link_id, API::Types::Coercible::Int.optional
          # @return [String] New description text for the link.
          attribute :text, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
