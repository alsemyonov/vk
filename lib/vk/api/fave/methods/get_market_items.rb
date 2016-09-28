# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Fave < Vk::Schema::Namespace
      module Methods
        # Returns market items bookmarked by current user.
        class GetMarketItems < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'fave.getMarketItems'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :count Number of results to return. ;
          #   @option arguments [Boolean] :extended '1' – to return additional fields  'likes, can_comment, can_repost, photos'. By default: '0'.
          #   @return [Fave::Methods::GetMarketItems]

          # @!group Arguments

          # @return [Integer] Number of results to return. ;
          attribute :count, API::Types::Coercible::Int.optional
          # @return [Boolean] '1' – to return additional fields  'likes, can_comment, can_repost, photos'. By default: '0'.
          attribute :extended, API::Types::Bool.optional
        end
      end
    end
  end
end
