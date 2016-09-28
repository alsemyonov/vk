# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Methods
        # Adds a video to a user or community page.
        class Add < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'video.add'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :target_id identifier of a user or community to add a video to.; Use a negative value to designate a community ID.
          #   @option arguments [Integer] :video_id Video ID.
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the video.; Use a negative value to designate a community ID.
          #   @return [Video::Methods::Add]

          # @!group Arguments

          # @return [Integer] identifier of a user or community to add a video to.; Use a negative value to designate a community ID.
          attribute :target_id, API::Types::Coercible::Int.optional
          # @return [Integer] Video ID.
          attribute :video_id, API::Types::Coercible::Int.optional
          # @return [Integer] ID of the user or community that owns the video.; Use a negative value to designate a community ID.
          attribute :owner_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
