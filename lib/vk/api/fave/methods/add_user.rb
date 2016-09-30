# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Fave < Vk::Schema::Namespace
      module Methods
        # Adds a profile to user faves.
        class AddUser < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'fave.addUser'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id Profile ID.
          #   @return [Fave::Methods::AddUser]

          # @!group Arguments

          # @return [Integer] Profile ID.
          attribute :user_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
