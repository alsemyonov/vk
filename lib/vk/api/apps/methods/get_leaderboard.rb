# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Apps < Vk::Schema::Namespace
      module Methods
        # Returns players rating in the game.
        class GetLeaderboard < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'apps.getLeaderboard'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :type Leaderboard type. Possible values:; *'level' — by level;; *'points' — by mission points;; *'score' — by score ().
          #   @option arguments [Boolean] :global Rating type.  Possible values:; *'1' — global rating among all players;; *'0' — rating among user friends.
          #   @return [Apps::Methods::GetLeaderboard]

          # @!group Arguments

          # @return [String] Leaderboard type. Possible values:; *'level' — by level;; *'points' — by mission points;; *'score' — by score ().
          attribute :type, API::Types::Coercible::String
          # @return [Boolean] Rating type.  Possible values:; *'1' — global rating among all players;; *'0' — rating among user friends.
          attribute :global, API::Types::Bool.optional.default(nil)
        end
      end
    end
  end
end
