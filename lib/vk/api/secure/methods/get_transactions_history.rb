# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Secure < Vk::Schema::Namespace
      module Methods
        # Shows history of votes transaction between users and the application.
        class GetTransactionsHistory < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'secure.getTransactionsHistory'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @return [Secure::Methods::GetTransactionsHistory]

          # @!group Arguments

        end
      end
    end
  end
end
