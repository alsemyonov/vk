# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      module Methods
        # Changes the status of a user as typing in a conversation.
        class SetActivity < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'messages.setActivity'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :user_id User ID.
          #   @option arguments [String] :type 'typing' — user has started to type.
          #   @option arguments [Integer] :peer_id Destination ID.; ; "For user:; 'User ID', e.g. '12345'.; ; For chat:; '2000000000' + 'chat_id', e.g. '2000000001'.; ; For community:; '- community ID', e.g. '-12345'.; "
          #   @return [Messages::Methods::SetActivity]

          # @!group Arguments

          # @return [String] User ID.
          attribute :user_id, API::Types::Coercible::String.optional.default(nil)
          # @return [String] 'typing' — user has started to type.
          attribute :type, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] Destination ID.; ; "For user:; 'User ID', e.g. '12345'.; ; For chat:; '2000000000' + 'chat_id', e.g. '2000000001'.; ; For community:; '- community ID', e.g. '-12345'.; "
          attribute :peer_id, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
