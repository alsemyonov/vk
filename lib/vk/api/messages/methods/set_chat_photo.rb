# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      module Methods
        # Sets a previously-uploaded picture as the cover picture of a chat.
        class SetChatPhoto < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'messages.setChatPhoto'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :file Upload URL from the 'response' field returned by the  method upon successfully uploading an image.
          #   @return [Messages::Methods::SetChatPhoto]

          # @!group Arguments

          # @return [String] Upload URL from the 'response' field returned by the  method upon successfully uploading an image.
          attribute :file, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
