# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Apps < Vk::Schema::Namespace
      module Methods
        # Sends a request to another user in an app that uses VK authorization.
        class SendRequest < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'apps.sendRequest'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id id of the user to send a request
          #   @option arguments [String] :text request text
          #   @option arguments [String] :type request type. Values:; 'invite' – if the request is sent to a user who does not have the app installed;; 'request' – if a user has already installed the app
          #   @option arguments [String] :name @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [String] :key special string key to be sent with the request
          #   @option arguments [Boolean] :separate @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Apps::Methods::SendRequest]

          # @!group Arguments

          # @return [Integer] id of the user to send a request
          attribute :user_id, API::Types::Coercible::Int
          # @return [String] request text
          attribute :text, API::Types::Coercible::String.optional.default(nil)
          # @return [String] request type. Values:; 'invite' – if the request is sent to a user who does not have the app installed;; 'request' – if a user has already installed the app
          attribute :type, API::Types::Coercible::String.enum("request", "invite").optional.default("request")
          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :name, API::Types::Coercible::String.optional.default(nil)
          # @return [String] special string key to be sent with the request
          attribute :key, API::Types::Coercible::String.optional.default(nil)
          # @return [Boolean] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :separate, API::Types::Form::Bool.optional.default(nil)
        end
      end
    end
  end
end
