# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Fave < Vk::Schema::Namespace
      module Methods
        # Returns a list of links that the current user has bookmarked.
        class GetLinks < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'fave.getLinks'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of users.
          #   @option arguments [Integer] :count Number of results to return.
          #   @return [Fave::Methods::GetLinks]

          # @!group Arguments

          # @return [Integer] Offset needed to return a specific subset of users.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of results to return.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
