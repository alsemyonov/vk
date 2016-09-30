# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Methods
        # Edits information about a video on a user or community page.
        class Edit < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'video.edit'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the video.
          #   @option arguments [Integer] :video_id Video ID.
          #   @option arguments [String] :name New video title.
          #   @option arguments [String] :desc New video description.
          #   @option arguments [Array] :privacy_view Privacy settings in a .; Privacy setting is available for videos uploaded to own profile by user.
          #   @option arguments [Array] :privacy_comment Privacy settings for comments in a .
          #   @option arguments [Boolean] :no_comments Disable comments for the group video.
          #   @option arguments [Boolean] :repeat '1' — to repeat the playback of the video; '0' — to play the video once;
          #   @return [Video::Methods::Edit]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the video.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Video ID.
          attribute :video_id, API::Types::Coercible::Int
          # @return [String] New video title.
          attribute :name, API::Types::Coercible::String.optional.default(nil)
          # @return [String] New video description.
          attribute :desc, API::Types::Coercible::String.optional.default(nil)
          # @return [Array] Privacy settings in a .; Privacy setting is available for videos uploaded to own profile by user.
          attribute :privacy_view, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
          # @return [Array] Privacy settings for comments in a .
          attribute :privacy_comment, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
          # @return [Boolean] Disable comments for the group video.
          attribute :no_comments, API::Types::Form::Bool.optional.default(nil)
          # @return [Boolean] '1' — to repeat the playback of the video; '0' — to play the video once;
          attribute :repeat, API::Types::Form::Bool.optional.default(nil)
        end
      end
    end
  end
end
