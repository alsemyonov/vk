# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Returns the server address for photo upload in a private message for a user.
        class GetMessagesUploadServer < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.getMessagesUploadServer'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @return [Photos::Methods::GetMessagesUploadServer]

          # @!group Arguments

        end
      end
    end
  end
end
