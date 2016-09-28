# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      module Methods
        # Returns a list of the current user's private messages that match search criteria.
        class Search < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'messages.search'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :q Search query string.
          #   @option arguments [Integer] :peer_id Destination ID.; ; "For user:; 'User ID', e.g. '12345'.; ; For chat:; '2000000000' + 'chat_id', e.g. '2000000001'.; ; For community:; '- community ID', e.g. '-12345'.; "
          #   @option arguments [Integer] :date Date to search message before in Unixtime.
          #   @option arguments [Integer] :count Number of messages to return.
          #   @return [Messages::Methods::Search]

          # @!group Arguments

          # @return [String] Search query string.
          attribute :q, API::Types::Coercible::String.optional
          # @return [Integer] Destination ID.; ; "For user:; 'User ID', e.g. '12345'.; ; For chat:; '2000000000' + 'chat_id', e.g. '2000000001'.; ; For community:; '- community ID', e.g. '-12345'.; "
          attribute :peer_id, API::Types::Coercible::Int.optional
          # @return [Integer] Date to search message before in Unixtime.
          attribute :date, API::Types::Coercible::Int.optional
          # @return [Integer] Number of messages to return.
          attribute :count, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
