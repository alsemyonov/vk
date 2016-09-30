# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # Adds a user to a community blacklist.
        class BanUser < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'groups.banUser'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID.
          #   @option arguments [Integer] :user_id User ID.
          #   @option arguments [Integer] :end_date Date (in Unix time) when the user will be removed from the blacklist.
          #   @option arguments [Integer] :reason Reason for ban:; '1' — spam; '2' — verbal abuse; '3' — strong language; '4' — irrelevant messages; '0' — other (default)
          #   @option arguments [String] :comment Text of comment to ban.
          #   @option arguments [Boolean] :comment_visible '1' — text of comment will be visible to the user;; '0' — text of comment will be invisible to the user. ; By default: '0'.
          #   @return [Groups::Methods::BanUser]

          # @!group Arguments

          # @return [Integer] Community ID.
          attribute :group_id, API::Types::Coercible::Int
          # @return [Integer] User ID.
          attribute :user_id, API::Types::Coercible::Int
          # @return [Integer] Date (in Unix time) when the user will be removed from the blacklist.
          attribute :end_date, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Reason for ban:; '1' — spam; '2' — verbal abuse; '3' — strong language; '4' — irrelevant messages; '0' — other (default)
          attribute :reason, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] Text of comment to ban.
          attribute :comment, API::Types::Coercible::String.optional.default(nil)
          # @return [Boolean] '1' — text of comment will be visible to the user;; '0' — text of comment will be invisible to the user. ; By default: '0'.
          attribute :comment_visible, API::Types::Bool.optional.default(nil)
        end
      end
    end
  end
end
