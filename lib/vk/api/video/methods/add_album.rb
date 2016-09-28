# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Methods
        # Creates an empty album for videos.
        class AddAlbum < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'video.addAlbum'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID (if the album will be created in a community).
          #   @option arguments [String] :title Album title.
          #   @option arguments [Array] :privacy new access permissions for the album.; Possible values: ; *'0' – all users;; *'1' – friends only;; *'2' – friends and friends of friends;; *'3' – "only me".
          #   @return [Video::Methods::AddAlbum]

          # @!group Arguments

          # @return [Integer] Community ID (if the album will be created in a community).
          attribute :group_id, API::Types::Coercible::Int.optional
          # @return [String] Album title.
          attribute :title, API::Types::Coercible::String.optional
          # @return [Array] new access permissions for the album.; Possible values: ; *'0' – all users;; *'1' – friends only;; *'2' – friends and friends of friends;; *'3' – "only me".
          attribute :privacy, API::Types::Coercible::Array.optional
        end
      end
    end
  end
end
