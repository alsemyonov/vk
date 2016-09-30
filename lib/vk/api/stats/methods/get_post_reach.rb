# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Stats < Vk::Schema::Namespace
      module Methods
        # Returns stats for a wall post.
        class GetPostReach < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'stats.getPostReach'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id post owner community id. Specify with "-" sign.
          #   @option arguments [Integer] :post_id wall post id. Note that stats are available only for '300' last (newest) posts on a community wall.
          #   @return [Stats::Methods::GetPostReach]

          # @!group Arguments

          # @return [Integer] post owner community id. Specify with "-" sign.
          attribute :owner_id, API::Types::Coercible::Int
          # @return [Integer] wall post id. Note that stats are available only for '300' last (newest) posts on a community wall.
          attribute :post_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
