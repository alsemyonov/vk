# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      module Methods
        # Gets settings of the user in this application.
        class GetAppPermissions < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'account.getAppPermissions'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id User ID whose settings information shall be got. By default: current user.
          #   @return [Account::Methods::GetAppPermissions]

          # @!group Arguments

          # @return [Integer] User ID whose settings information shall be got. By default: current user.
          attribute :user_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
