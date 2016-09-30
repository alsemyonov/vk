# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      module Methods
        # Returns a user's current status and date of last activity.
        class GetLastActivity < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'messages.getLastActivity'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id User ID.
          #   @return [Messages::Methods::GetLastActivity]

          # @!group Arguments

          # @return [Integer] User ID.
          attribute :user_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
