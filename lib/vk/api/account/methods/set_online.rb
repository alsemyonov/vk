# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      module Methods
        # Marks the current user as online for 15 minutes.
        class SetOnline < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'account.setOnline'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Boolean] :voip '1' if videocalls are available for current device.
          #   @return [Account::Methods::SetOnline]

          # @!group Arguments

          # @return [Boolean] '1' if videocalls are available for current device.
          attribute :voip, API::Types::Form::Bool.optional.default(nil)
        end
      end
    end
  end
end
