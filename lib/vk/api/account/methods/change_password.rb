# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      module Methods
        # Changes a user password after access is successfully restored with the  method.
        class ChangePassword < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'account.changePassword'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :restore_sid Session id received after the  method is executed.; (If the password is changed right after the access was restored)
          #   @option arguments [String] :change_password_hash Hash received after a successful OAuth authorization with a code got by SMS.; (If the password is changed right after the access was restored)
          #   @option arguments [String] :old_password Current user password.
          #   @option arguments [String] :new_password New password that  will be set as a current
          #   @return [Account::Methods::ChangePassword]

          # @!group Arguments

          # @return [String] Session id received after the  method is executed.; (If the password is changed right after the access was restored)
          attribute :restore_sid, API::Types::Coercible::String.optional
          # @return [String] Hash received after a successful OAuth authorization with a code got by SMS.; (If the password is changed right after the access was restored)
          attribute :change_password_hash, API::Types::Coercible::String.optional
          # @return [String] Current user password.
          attribute :old_password, API::Types::Coercible::String.optional
          # @return [String] New password that  will be set as a current
          attribute :new_password, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
