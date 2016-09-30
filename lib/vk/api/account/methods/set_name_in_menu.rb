# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      module Methods
        # Sets an application screen name (up to 17 characters), that is shown to the user in the left menu.
        class SetNameInMenu < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'account.setNameInMenu'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id User ID.
          #   @option arguments [String] :name Application screen name.
          #   @return [Account::Methods::SetNameInMenu]

          # @!group Arguments

          # @return [Integer] User ID.
          attribute :user_id, API::Types::Coercible::Int
          # @return [String] Application screen name.
          attribute :name, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
