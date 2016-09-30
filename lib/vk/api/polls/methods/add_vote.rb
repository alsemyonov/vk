# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Polls < Vk::Schema::Namespace
      module Methods
        # Adds the current user's vote to the selected answer in the poll.
        class AddVote < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'polls.addVote'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the poll.  Use a negative value to designate a community ID.
          #   @option arguments [Integer] :poll_id Poll ID.
          #   @option arguments [Integer] :answer_id Answer ID.
          #   @option arguments [Boolean] :is_board @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Polls::Methods::AddVote]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the poll.  Use a negative value to designate a community ID.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Poll ID.
          attribute :poll_id, API::Types::Coercible::Int
          # @return [Integer] Answer ID.
          attribute :answer_id, API::Types::Coercible::Int
          # @return [Boolean] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :is_board, API::Types::Bool.optional.default(nil)
        end
      end
    end
  end
end
