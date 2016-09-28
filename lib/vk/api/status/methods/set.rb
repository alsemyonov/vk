# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Status < Vk::Schema::Namespace
      module Methods
        # Sets a new status for the current user.
        class Set < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'status.set'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :text Text of the new status.
          #   @option arguments [Integer] :group_id Identifier of a community to set a status in. If left blank the status is set to current user.
          #   @return [Status::Methods::Set]

          # @!group Arguments

          # @return [String] Text of the new status.
          attribute :text, API::Types::Coercible::String.optional
          # @return [Integer] Identifier of a community to set a status in. If left blank the status is set to current user.
          attribute :group_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
