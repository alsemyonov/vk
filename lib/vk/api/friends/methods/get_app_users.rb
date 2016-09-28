# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Friends < Vk::Schema::Namespace
      module Methods
        # Returns a list of IDs of the current user's friends who installed the application.
        class GetAppUsers < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'friends.getAppUsers'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @return [Friends::Methods::GetAppUsers]

          # @!group Arguments

        end
      end
    end
  end
end
