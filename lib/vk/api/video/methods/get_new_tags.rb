# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Methods
        # Returns a list of videos with tags that have not been viewed.
        class GetNewTags < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'video.getNewTags'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of videos.
          #   @option arguments [Integer] :count Number of videos to return.
          #   @return [Video::Methods::GetNewTags]

          # @!group Arguments

          # @return [Integer] Offset needed to return a specific subset of videos.
          attribute :offset, API::Types::Coercible::Int.optional
          # @return [Integer] Number of videos to return.
          attribute :count, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
