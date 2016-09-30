# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Newsfeed < Vk::Schema::Namespace
      module Methods
        # Returns a list of posts on user walls in which the current user is mentioned.;
        class GetMentions < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'newsfeed.getMentions'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id Owner ID.
          #   @option arguments [Integer] :start_time Earliest timestamp (in Unix time) of a post to return. By default, 24 hours ago.;
          #   @option arguments [Integer] :end_time Latest timestamp (in Unix time) of a post to return. By default, the current time.;
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of posts.
          #   @option arguments [Integer] :count Number of posts to return.
          #   @return [Newsfeed::Methods::GetMentions]

          # @!group Arguments

          # @return [Integer] Owner ID.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Earliest timestamp (in Unix time) of a post to return. By default, 24 hours ago.;
          attribute :start_time, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Latest timestamp (in Unix time) of a post to return. By default, the current time.;
          attribute :end_time, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of posts.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of posts to return.
          attribute :count, API::Types::Coercible::Int.optional.default(20)
        end
      end
    end
  end
end
