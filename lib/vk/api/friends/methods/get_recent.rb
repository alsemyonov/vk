# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Friends < Vk::Schema::Namespace
      module Methods
        # Returns a list of user IDs of the current user's recently added friends.
        class GetRecent < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'friends.getRecent'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :count Number of recently added friends to return.
          #   @return [Friends::Methods::GetRecent]

          # @!group Arguments

          # @return [Integer] Number of recently added friends to return.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
