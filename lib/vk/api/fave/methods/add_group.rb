# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Fave < Vk::Schema::Namespace
      module Methods
        # Adds a community to user faves.
        class AddGroup < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'fave.addGroup'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID.
          #   @return [Fave::Methods::AddGroup]

          # @!group Arguments

          # @return [Integer] Community ID.
          attribute :group_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
