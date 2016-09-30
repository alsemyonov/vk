# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Secure < Vk::Schema::Namespace
      module Methods
        # Shows a list of SMS notifications sent by the application using  method.
        class GetSmsHistory < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'secure.getSMSHistory'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Integer] :date_from filter by start date. It is set as UNIX-time.
          #   @option arguments [Integer] :date_to filter by end date. It is set as UNIX-time.
          #   @option arguments [Integer] :limit number of returned posts. By default — 1000.
          #   @return [Secure::Methods::GetSmsHistory]

          # @!group Arguments

          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :user_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] filter by start date. It is set as UNIX-time.
          attribute :date_from, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] filter by end date. It is set as UNIX-time.
          attribute :date_to, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] number of returned posts. By default — 1000.
          attribute :limit, API::Types::Coercible::Int.optional.default(1000)
        end
      end
    end
  end
end
