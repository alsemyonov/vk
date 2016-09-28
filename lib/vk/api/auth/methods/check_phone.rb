# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Auth < Vk::Schema::Namespace
      module Methods
        # Checks a user's phone number for correctness.
        class CheckPhone < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'auth.checkPhone'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :phone Phone number.
          #   @option arguments [Integer] :client_id User ID.
          #   @option arguments [String] :client_secret @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Boolean] :auth_by_phone @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Auth::Methods::CheckPhone]

          # @!group Arguments

          # @return [String] Phone number.
          attribute :phone, API::Types::Coercible::String.optional
          # @return [Integer] User ID.
          attribute :client_id, API::Types::Coercible::Int.optional
          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :client_secret, API::Types::Coercible::String.optional
          # @return [Boolean] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :auth_by_phone, API::Types::Bool.optional
        end
      end
    end
  end
end
