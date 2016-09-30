# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Secure < Vk::Schema::Namespace
      module Methods
        # Checks the user authentification in 'IFrame' and 'Flash' apps using the 'access_token' parameter.
        class CheckToken < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'secure.checkToken'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :token client 'access_token'
          #   @option arguments [String] :ip user 'ip address'. Note that user may access using the 'ipv6' address, in this case it is required to transmit the 'ipv6' address. ; If not transmitted, the address will not be checked.
          #   @return [Secure::Methods::CheckToken]

          # @!group Arguments

          # @return [String] client 'access_token'
          attribute :token, API::Types::Coercible::String.optional.default(nil)
          # @return [String] user 'ip address'. Note that user may access using the 'ipv6' address, in this case it is required to transmit the 'ipv6' address. ; If not transmitted, the address will not be checked.
          attribute :ip, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
