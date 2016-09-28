# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # Returns  server settings for the community.
        class GetCallbackServerSettings < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'groups.getCallbackServerSettings'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID.
          #   @return [Groups::Methods::GetCallbackServerSettings]

          # @!group Arguments

          # @return [Integer] Community ID.
          attribute :group_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
