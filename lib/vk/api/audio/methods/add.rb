# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Audio < Vk::Schema::Namespace
      module Methods
        # Copies an audio file to a user page or community page.
        class Add < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'audio.add'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :audio_id Audio file ID.
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the audio file. Use a negative value to designate a community ID. ; ;
          #   @option arguments [Integer] :group_id Community ID, needed when adding the audio file to a community (without minus).
          #   @option arguments [Integer] :album_id Album ID.
          #   @return [Audio::Methods::Add]

          # @!group Arguments

          # @return [Integer] Audio file ID.
          attribute :audio_id, API::Types::Coercible::Int.optional
          # @return [Integer] ID of the user or community that owns the audio file. Use a negative value to designate a community ID. ; ;
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [Integer] Community ID, needed when adding the audio file to a community (without minus).
          attribute :group_id, API::Types::Coercible::Int.optional
          # @return [Integer] Album ID.
          attribute :album_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
