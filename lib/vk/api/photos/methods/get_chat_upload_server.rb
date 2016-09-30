# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Returns an upload link for chat cover pictures.
        class GetChatUploadServer < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.getChatUploadServer'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :chat_id ID of the chat for which you want to upload a cover photo.
          #   @option arguments [Integer] :crop_x 
          #   @option arguments [Integer] :crop_y 
          #   @option arguments [Integer] :crop_width Width (in pixels) of the photo after cropping.
          #   @return [Photos::Methods::GetChatUploadServer]

          # @!group Arguments

          # @return [Integer] ID of the chat for which you want to upload a cover photo.
          attribute :chat_id, API::Types::Coercible::Int
          # @return [Integer] 
          attribute :crop_x, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] 
          attribute :crop_y, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Width (in pixels) of the photo after cropping.
          attribute :crop_width, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
