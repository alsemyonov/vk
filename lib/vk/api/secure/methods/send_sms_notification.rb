# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Secure < Vk::Schema::Namespace
      module Methods
        # Sends 'SMS' notification to a user's mobile device.
        class SendSmsNotification < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'secure.sendSMSNotification'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id ID of the user to whom SMS notification is sent. The user shall allow the application to send him/her notifications (, +1).
          #   @option arguments [String] :message 'SMS' text to be sent in 'UTF-8' encoding. Only Latin letters and numbers are allowed. Maximum size is '160' characters.
          #   @return [Secure::Methods::SendSmsNotification]

          # @!group Arguments

          # @return [Integer] ID of the user to whom SMS notification is sent. The user shall allow the application to send him/her notifications (, +1).
          attribute :user_id, API::Types::Coercible::Int.optional
          # @return [String] 'SMS' text to be sent in 'UTF-8' encoding. Only Latin letters and numbers are allowed. Maximum size is '160' characters.
          attribute :message, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
