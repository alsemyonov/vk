# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Methods
        # Adds a tag on a video.
        class PutTag < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'video.putTag'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id ID of the user to be tagged.
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the video.
          #   @option arguments [Integer] :video_id Video ID.
          #   @option arguments [String] :tagged_name Tag text.
          #   @return [Video::Methods::PutTag]

          # @!group Arguments

          # @return [Integer] ID of the user to be tagged.
          attribute :user_id, API::Types::Coercible::Int.optional
          # @return [Integer] ID of the user or community that owns the video.
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [Integer] Video ID.
          attribute :video_id, API::Types::Coercible::Int.optional
          # @return [String] Tag text.
          attribute :tagged_name, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
