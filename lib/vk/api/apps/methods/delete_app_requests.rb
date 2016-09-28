# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Apps < Vk::Schema::Namespace
      module Methods
        # Deletes all request notifications from the current app.
        class DeleteAppRequests < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'apps.deleteAppRequests'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @return [Apps::Methods::DeleteAppRequests]

          # @!group Arguments

        end
      end
    end
  end
end
