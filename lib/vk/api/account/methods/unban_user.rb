# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      module Methods
        # Deletes user from the blacklist.
        class UnbanUser < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'account.unbanUser'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id User ID.
          #   @return [Account::Methods::UnbanUser]

          # @!group Arguments

          # @return [Integer] User ID.
          attribute :user_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
