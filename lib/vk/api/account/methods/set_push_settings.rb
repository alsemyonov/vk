# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      module Methods
        # Change push settings.
        class SetPushSettings < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'account.setPushSettings'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :device_id Unique device ID.
          #   @option arguments [String] :settings Push settings in a .
          #   @option arguments [String] :key Notification key.
          #   @option arguments [Array] :value New value for the key in a .
          #   @return [Account::Methods::SetPushSettings]

          # @!group Arguments

          # @return [String] Unique device ID.
          attribute :device_id, API::Types::Coercible::String
          # @return [String] Push settings in a .
          attribute :settings, API::Types::Coercible::String.optional.default(nil)
          # @return [String] Notification key.
          attribute :key, API::Types::Coercible::String.optional.default(nil)
          # @return [Array] New value for the key in a .
          attribute :value, API::Types::Coercible::Array.optional.default(nil)
        end
      end
    end
  end
end
