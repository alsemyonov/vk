# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      module Methods
        # Mutes push notifications for the set period of time.
        class SetSilenceMode < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'account.setSilenceMode'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :device_id Unique device ID.
          #   @option arguments [Integer] :time Time in seconds for what notifications should be disabled. '-1' to disable forever.
          #   @option arguments [Integer] :peer_id Destination ID.; "For user:; 'User ID', e.g. '12345'.; ; For chat:; '2000000000' + 'Chat ID', e.g. '2000000001'.; ; For community:; '- Community ID', e.g. '-12345'.; "
          #   @option arguments [Integer] :sound '1' — to enable sound in this dialog, '0' — to disable sound. Only if 'peer_id' contains user or community ID.
          #   @return [Account::Methods::SetSilenceMode]

          # @!group Arguments

          # @return [String] Unique device ID.
          attribute :device_id, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] Time in seconds for what notifications should be disabled. '-1' to disable forever.
          attribute :time, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Destination ID.; "For user:; 'User ID', e.g. '12345'.; ; For chat:; '2000000000' + 'Chat ID', e.g. '2000000001'.; ; For community:; '- Community ID', e.g. '-12345'.; "
          attribute :peer_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] '1' — to enable sound in this dialog, '0' — to disable sound. Only if 'peer_id' contains user or community ID.
          attribute :sound, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
