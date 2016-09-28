# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      module Methods
        # Gets settings of push notifications.
        class GetPushSettings < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'account.getPushSettings'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :device_id Unique device ID.
          #   @return [Account::Methods::GetPushSettings]

          # @!group Arguments

          # @return [String] Unique device ID.
          attribute :device_id, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
