# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Fave < Vk::Schema::Namespace
      module Methods
        # Returns a list of videos that the current user has liked.;
        class GetVideos < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'fave.getVideos'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of videos.
          #   @option arguments [Integer] :count Number of videos to return.
          #   @option arguments [Boolean] :extended Return an additional information about videos. Also returns all owners profiles and groups.
          #   @return [Fave::Methods::GetVideos]

          # @!group Arguments

          # @return [Integer] Offset needed to return a specific subset of videos.
          attribute :offset, API::Types::Coercible::Int.optional
          # @return [Integer] Number of videos to return.
          attribute :count, API::Types::Coercible::Int.optional
          # @return [Boolean] Return an additional information about videos. Also returns all owners profiles and groups.
          attribute :extended, API::Types::Bool.optional
        end
      end
    end
  end
end
