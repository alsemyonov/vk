# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Polls < Vk::Schema::Namespace
      module Methods
        # Returns detailed information about a poll by its ID.
        class GetById < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'polls.getById'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the poll. Use a negative value to designate a community ID.
          #   @option arguments [Boolean] :is_board '1' – poll is in a board, '0' – poll is on a wall. ; '0' by default.
          #   @option arguments [Integer] :poll_id Poll ID.
          #   @return [Polls::Methods::GetById]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the poll. Use a negative value to designate a community ID.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] '1' – poll is in a board, '0' – poll is on a wall. ; '0' by default.
          attribute :is_board, API::Types::Form::Bool.optional.default(nil)
          # @return [Integer] Poll ID.
          attribute :poll_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
