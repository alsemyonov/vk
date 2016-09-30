# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Methods
        # Returns detailed information about videos.
        class Get < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'video.get'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the video(s).
          #   @option arguments [Array] :videos Video IDs, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; Use a negative value to designate a community ID.; ; Example:; "-4363_136089719,13245770_137352259"
          #   @option arguments [Integer] :album_id ID of the album containing the video(s).
          #   @option arguments [Integer] :count Number of videos to return.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of videos.
          #   @option arguments [Boolean] :extended '1' — to return an extended response with additional fields
          #   @return [Video::Methods::Get]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the video(s).
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Array] Video IDs, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; Use a negative value to designate a community ID.; ; Example:; "-4363_136089719,13245770_137352259"
          attribute :videos, API::Types::Coercible::Array.optional.default(nil)
          # @return [Integer] ID of the album containing the video(s).
          attribute :album_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of videos to return.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of videos.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] '1' — to return an extended response with additional fields
          attribute :extended, API::Types::Bool.optional.default(nil)
        end
      end
    end
  end
end
