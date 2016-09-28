# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Newsfeed < Vk::Schema::Namespace
      module Methods
        # ; Returns a list of newsfeeds recommended to the current user.
        class GetRecommended < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'newsfeed.getRecommended'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :start_time Earliest timestamp (in Unix time) of a news item to return. By default, 24 hours ago.
          #   @option arguments [Integer] :end_time Latest timestamp (in Unix time) of a news item to return. By default, the current time.
          #   @option arguments [Integer] :max_photos Maximum number of photos to return. By default, '5'.
          #   @option arguments [String] :start_from 'new_from' value obtained in previous call.
          #   @option arguments [Integer] :count Number of news items to return.
          #   @option arguments [Array] :fields Additional fields of  and  to return.
          #   @return [Newsfeed::Methods::GetRecommended]

          # @!group Arguments

          # @return [Integer] Earliest timestamp (in Unix time) of a news item to return. By default, 24 hours ago.
          attribute :start_time, API::Types::Coercible::Int.optional
          # @return [Integer] Latest timestamp (in Unix time) of a news item to return. By default, the current time.
          attribute :end_time, API::Types::Coercible::Int.optional
          # @return [Integer] Maximum number of photos to return. By default, '5'.
          attribute :max_photos, API::Types::Coercible::Int.optional
          # @return [String] 'new_from' value obtained in previous call.
          attribute :start_from, API::Types::Coercible::String.optional
          # @return [Integer] Number of news items to return.
          attribute :count, API::Types::Coercible::Int.optional
          # @return [Array] Additional fields of  and  to return.
          attribute :fields, API::Types::Coercible::Array.optional
        end
      end
    end
  end
end
