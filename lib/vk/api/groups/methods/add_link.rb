# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # Allows to add a link to the community.
        class AddLink < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'groups.addLink'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID.
          #   @option arguments [String] :link LInk URL.
          #   @option arguments [String] :text Description text for the link.
          #   @return [Groups::Methods::AddLink]

          # @!group Arguments

          # @return [Integer] Community ID.
          attribute :group_id, API::Types::Coercible::Int
          # @return [String] LInk URL.
          attribute :link, API::Types::Coercible::String
          # @return [String] Description text for the link.
          attribute :text, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
