# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      module Methods
        # Subscribes an iOS/Android/Windows Phone-based device to receive push notifications
        class RegisterDevice < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'account.registerDevice'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :token Device token used to send notifications. (for mpns, the token shall be URL for sending of notifications)
          #   @option arguments [String] :device_model String name of device model.
          #   @option arguments [Integer] :device_year Device year.
          #   @option arguments [String] :device_id Unique device ID.
          #   @option arguments [String] :system_version String version of device operating system.
          #   @option arguments [String] :settings Push settings in a .
          #   @return [Account::Methods::RegisterDevice]

          # @!group Arguments

          # @return [String] Device token used to send notifications. (for mpns, the token shall be URL for sending of notifications)
          attribute :token, API::Types::Coercible::String
          # @return [String] String name of device model.
          attribute :device_model, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] Device year.
          attribute :device_year, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] Unique device ID.
          attribute :device_id, API::Types::Coercible::String
          # @return [String] String version of device operating system.
          attribute :system_version, API::Types::Coercible::String.optional.default(nil)
          # @return [String] Push settings in a .
          attribute :settings, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
