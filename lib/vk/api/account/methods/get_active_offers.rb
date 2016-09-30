# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      module Methods
        # Returns a list of active ads (offers) which executed by the user will bring him/her respective number of votes to his balance in the application.
        class GetActiveOffers < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'account.getActiveOffers'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :count Number of results to return.
          #   @return [Account::Methods::GetActiveOffers]

          # @!group Arguments

          # @return [Integer] Number of results to return.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
