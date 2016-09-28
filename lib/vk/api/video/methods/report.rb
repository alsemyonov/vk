# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Methods
        # Reports (submits a complaint about) a video.
        class Report < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'video.report'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the video.
          #   @option arguments [Integer] :video_id Video ID.
          #   @option arguments [Integer] :reason Reason for the complaint:; '0' – spam; '1' – child pornography; '2' – extremism; '3' – violence; '4' – drug propaganda; '5' – adult material; '6' – insult; abuse
          #   @option arguments [String] :comment Comment describing the complaint.
          #   @option arguments [String] :search_query (If the video was found in search results.) Search query string.
          #   @return [Video::Methods::Report]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the video.
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [Integer] Video ID.
          attribute :video_id, API::Types::Coercible::Int.optional
          # @return [Integer] Reason for the complaint:; '0' – spam; '1' – child pornography; '2' – extremism; '3' – violence; '4' – drug propaganda; '5' – adult material; '6' – insult; abuse
          attribute :reason, API::Types::Coercible::Int.optional
          # @return [String] Comment describing the complaint.
          attribute :comment, API::Types::Coercible::String.optional
          # @return [String] (If the video was found in search results.) Search query string.
          attribute :search_query, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
