# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Fave < Vk::Schema::Namespace
      module Methods
        # Removes a community from user faves.
        class RemoveGroup < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'fave.removeGroup'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID.
          #   @return [Fave::Methods::RemoveGroup]

          # @!group Arguments

          # @return [Integer] Community ID.
          attribute :group_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
