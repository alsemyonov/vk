# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Fave < Vk::Schema::Namespace
      module Methods
        # Returns a list of users whom the current user has bookmarked.; ;
        class GetUsers < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'fave.getUsers'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of users.
          #   @option arguments [Integer] :count Number of users to return.
          #   @return [Fave::Methods::GetUsers]

          # @!group Arguments

          # @return [Integer] Offset needed to return a specific subset of users.
          attribute :offset, API::Types::Coercible::Int.optional
          # @return [Integer] Number of users to return.
          attribute :count, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
