# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Apps < Vk::Schema::Namespace
      module Methods
        # Creates friends list for requests and invites in current app.
        class GetFriendsList < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'apps.getFriendsList'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :count List size.
          #   @option arguments [String] :type List type. Possible values:; * 'invite' — available for invites (don't play the game);; * 'request' — available for request (play the game).; ; By default: 'invite'.
          #   @option arguments [Array] :fields Additional profile fields, see .
          #   @return [Apps::Methods::GetFriendsList]

          # @!group Arguments

          # @return [Integer] List size.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] List type. Possible values:; * 'invite' — available for invites (don't play the game);; * 'request' — available for request (play the game).; ; By default: 'invite'.
          attribute :type, API::Types::Coercible::String.optional.default(nil)
          # @return [Array] Additional profile fields, see .
          attribute :fields, API::Types::Coercible::Array.optional.default(nil)
        end
      end
    end
  end
end
