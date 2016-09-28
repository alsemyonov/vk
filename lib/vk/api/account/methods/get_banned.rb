# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      module Methods
        # Returns a user's blacklist.
        class GetBanned < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'account.getBanned'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of results.
          #   @option arguments [Integer] :count Number of results to return.
          #   @return [Account::Methods::GetBanned]

          # @!group Arguments

          # @return [Integer] Offset needed to return a specific subset of results.
          attribute :offset, API::Types::Coercible::Int.optional
          # @return [Integer] Number of results to return.
          attribute :count, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
