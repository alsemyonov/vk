# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # Allow to set  server settings.
        class SetCallbackServerSettings < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'groups.setCallbackServerSettings'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID.
          #   @option arguments [String] :secret_key Callback API secret key.
          #   @return [Groups::Methods::SetCallbackServerSettings]

          # @!group Arguments

          # @return [Integer] Community ID.
          attribute :group_id, API::Types::Coercible::Int.optional
          # @return [String] Callback API secret key.
          attribute :secret_key, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
