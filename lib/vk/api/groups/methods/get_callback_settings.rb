# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # Returns  notifications settings.
        class GetCallbackSettings < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'groups.getCallbackSettings'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID.
          #   @return [Groups::Methods::GetCallbackSettings]

          # @!group Arguments

          # @return [Integer] Community ID.
          attribute :group_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
