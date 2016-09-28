# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Notifications < Vk::Schema::Namespace
      module Methods
        # Resets the counter of new notifications about other users' feedback to the current user's wall posts.
        class MarkAsViewed < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'notifications.markAsViewed'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @return [Notifications::Methods::MarkAsViewed]

          # @!group Arguments

        end
      end
    end
  end
end
