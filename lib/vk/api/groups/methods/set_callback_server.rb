# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # Allow to set  server URL for the community. ; ;
        class SetCallbackServer < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'groups.setCallbackServer'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID.
          #   @option arguments [String] :server_url Server URL.
          #   @return [Groups::Methods::SetCallbackServer]

          # @!group Arguments

          # @return [Integer] Community ID.
          attribute :group_id, API::Types::Coercible::Int.optional
          # @return [String] Server URL.
          attribute :server_url, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
