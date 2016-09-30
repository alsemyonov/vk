# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Auth < Vk::Schema::Namespace
      module Methods
        # Completes a user's registration (begun with the  method) using an authorization code.
        class Confirm < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'auth.confirm'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :client_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [String] :client_secret @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [String] :phone @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [String] :code @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [String] :password @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Boolean] :test_mode @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Integer] :intro @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Auth::Methods::Confirm]

          # @!group Arguments

          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :client_id, API::Types::Coercible::Int
          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :client_secret, API::Types::Coercible::String
          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :phone, API::Types::Coercible::String
          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :code, API::Types::Coercible::String
          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :password, API::Types::Coercible::String.optional.default(nil)
          # @return [Boolean] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :test_mode, API::Types::Bool.optional.default(nil)
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :intro, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
