# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Audio < Vk::Schema::Namespace
      module Methods
        # Returns the server address to [https://vk.com/dev/upload_files_2?f=8.%20Uploading%20Audio%20Files|upload audio files].
        class GetUploadServer < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'audio.getUploadServer'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @return [Audio::Methods::GetUploadServer]

          # @!group Arguments

        end
      end
    end
  end
end
