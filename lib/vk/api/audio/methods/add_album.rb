# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Audio < Vk::Schema::Namespace
      module Methods
        # Creates an empty audio album.
        class AddAlbum < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'audio.addAlbum'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID (if the album will be created in a community).
          #   @option arguments [String] :title Album title.
          #   @return [Audio::Methods::AddAlbum]

          # @!group Arguments

          # @return [Integer] Community ID (if the album will be created in a community).
          attribute :group_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] Album title.
          attribute :title, API::Types::Coercible::String
        end
      end
    end
  end
end
