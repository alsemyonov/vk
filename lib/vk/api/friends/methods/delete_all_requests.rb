# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Friends < Vk::Schema::Namespace
      module Methods
        # Marks all incoming friend requests as viewed.
        class DeleteAllRequests < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'friends.deleteAllRequests'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @return [Friends::Methods::DeleteAllRequests]

          # @!group Arguments

        end
      end
    end
  end
end
