# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      module Methods
        # Adds user to the banlist.
        class BanUser < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'account.banUser'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id User ID.
          #   @return [Account::Methods::BanUser]

          # @!group Arguments

          # @return [Integer] User ID.
          attribute :user_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
