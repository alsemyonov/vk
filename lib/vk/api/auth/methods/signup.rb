# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Auth < Vk::Schema::Namespace
      module Methods
        # Registers a new user by phone number.
        class Signup < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'auth.signup'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :first_name User's first name.
          #   @option arguments [String] :last_name User's surname.
          #   @option arguments [Integer] :client_id Your application ID.
          #   @option arguments [String] :client_secret @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [String] :phone User's phone number. Can be pre-checked with the  method.
          #   @option arguments [String] :password User's password (minimum of 6 characters). Can be specified later with the  method.
          #   @option arguments [Boolean] :test_mode '1' — test mode, in which the user will not be registered and the phone number will not be checked for availability; '0' — default mode (default)
          #   @option arguments [Boolean] :voice '1' — call the phone number and leave a voice message of the authorization code; '0' — send the code by SMS (default)
          #   @option arguments [Integer] :sex '1' — female; '2' — male
          #   @option arguments [String] :sid Session ID required for method recall when SMS was not delivered.
          #   @return [Auth::Methods::Signup]

          # @!group Arguments

          # @return [String] User's first name.
          attribute :first_name, API::Types::Coercible::String
          # @return [String] User's surname.
          attribute :last_name, API::Types::Coercible::String
          # @return [Integer] Your application ID.
          attribute :client_id, API::Types::Coercible::Int
          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :client_secret, API::Types::Coercible::String
          # @return [String] User's phone number. Can be pre-checked with the  method.
          attribute :phone, API::Types::Coercible::String
          # @return [String] User's password (minimum of 6 characters). Can be specified later with the  method.
          attribute :password, API::Types::Coercible::String.optional.default(nil)
          # @return [Boolean] '1' — test mode, in which the user will not be registered and the phone number will not be checked for availability; '0' — default mode (default)
          attribute :test_mode, API::Types::Bool.optional.default(nil)
          # @return [Boolean] '1' — call the phone number and leave a voice message of the authorization code; '0' — send the code by SMS (default)
          attribute :voice, API::Types::Bool.optional.default(nil)
          # @return [Integer] '1' — female; '2' — male
          attribute :sex, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] Session ID required for method recall when SMS was not delivered.
          attribute :sid, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
