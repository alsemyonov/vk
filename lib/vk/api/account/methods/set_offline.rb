# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      module Methods
        # Marks a current user as offline.
        class SetOffline < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'account.setOffline'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @return [Account::Methods::SetOffline]

          # @!group Arguments

        end
      end
    end
  end
end
