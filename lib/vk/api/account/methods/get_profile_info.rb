# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      module Methods
        # Returns the current account info.
        class GetProfileInfo < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'account.getProfileInfo'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @return [Account::Methods::GetProfileInfo]

          # @!group Arguments

        end
      end
    end
  end
end
