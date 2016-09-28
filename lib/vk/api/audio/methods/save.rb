# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Audio < Vk::Schema::Namespace
      module Methods
        # Saves audio files after successful [https://vk.com/dev/upload_files_2?f=8.%20Uploading%20Audio%20Files|uploading].
        class Save < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'audio.save'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :server This parameter is returned when the audio file is [https://vk.com/dev/upload_files_2?f=8.%20Uploading%20Audio%20Files|uploaded to the server].
          #   @option arguments [String] :audio This parameter is returned when the audio file is [https://vk.com/dev/upload_files_2?f=8.%20Uploading%20Audio%20Files|uploaded to the server].
          #   @option arguments [String] :hash This parameter is returned when the audio file is [https://vk.com/dev/upload_files_2?f=8.%20Uploading%20Audio%20Files|uploaded to the server].
          #   @option arguments [String] :artist The name of the artist. By default, this is obtained from ID3 tags.
          #   @option arguments [String] :title The title of the audio file. By default, this is obtained from ID3 tags.
          #   @return [Audio::Methods::Save]

          # @!group Arguments

          # @return [Integer] This parameter is returned when the audio file is [https://vk.com/dev/upload_files_2?f=8.%20Uploading%20Audio%20Files|uploaded to the server].
          attribute :server, API::Types::Coercible::Int.optional
          # @return [String] This parameter is returned when the audio file is [https://vk.com/dev/upload_files_2?f=8.%20Uploading%20Audio%20Files|uploaded to the server].
          attribute :audio, API::Types::Coercible::String.optional
          # @return [String] This parameter is returned when the audio file is [https://vk.com/dev/upload_files_2?f=8.%20Uploading%20Audio%20Files|uploaded to the server].
          attribute :hash, API::Types::Coercible::String.optional
          # @return [String] The name of the artist. By default, this is obtained from ID3 tags.
          attribute :artist, API::Types::Coercible::String.optional
          # @return [String] The title of the audio file. By default, this is obtained from ID3 tags.
          attribute :title, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
