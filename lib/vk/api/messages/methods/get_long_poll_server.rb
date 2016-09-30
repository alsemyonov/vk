# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      module Methods
        # Returns data required for connection to a Long Poll server.
        class GetLongPollServer < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'messages.getLongPollServer'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Boolean] :use_ssl '1' — to use SSL.
          #   @option arguments [Boolean] :need_pts '1' — to return the 'pts' field, needed for the  method.
          #   @return [Messages::Methods::GetLongPollServer]

          # @!group Arguments

          # @return [Boolean] '1' — to use SSL.
          attribute :use_ssl, API::Types::Form::Bool.optional.default(nil)
          # @return [Boolean] '1' — to return the 'pts' field, needed for the  method.
          attribute :need_pts, API::Types::Form::Bool.optional.default(nil)
        end
      end
    end
  end
end
