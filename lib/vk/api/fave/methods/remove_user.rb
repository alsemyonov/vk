# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Fave < Vk::Schema::Namespace
      module Methods
        # Removes a profile from user faves.
        class RemoveUser < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'fave.removeUser'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id Profile ID.
          #   @return [Fave::Methods::RemoveUser]

          # @!group Arguments

          # @return [Integer] Profile ID.
          attribute :user_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
