# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      module Methods
        # Returns updates in user's private messages.
        class GetLongPollHistory < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'messages.getLongPollHistory'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :ts Last value of the 'ts' parameter returned from the Long Poll server or by using  method.
          #   @option arguments [Integer] :pts Lsat value of 'pts' parameter returned from the Long Poll server or by using  method.
          #   @option arguments [Integer] :preview_length Number of characters after which to truncate a previewed message. To preview the full message, specify '0'.; "NOTE: Messages are not truncated by default. Messages are truncated by words."
          #   @option arguments [Boolean] :onlines '1' — to return history with online users only.
          #   @option arguments [Array] :fields Additional  to return.
          #   @option arguments [Integer] :events_limit Maximum nimber of events to return.
          #   @option arguments [Integer] :msgs_limit Maximum number of messages to return.
          #   @option arguments [Integer] :max_msg_id Maximum ID of the message among existing ones in the local copy. Both messages received with API methods (for example, , ), and data received from a Long Poll server (events with code 4) are taken into account.
          #   @return [Messages::Methods::GetLongPollHistory]

          # @!group Arguments

          # @return [Integer] Last value of the 'ts' parameter returned from the Long Poll server or by using  method.
          attribute :ts, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Lsat value of 'pts' parameter returned from the Long Poll server or by using  method.
          attribute :pts, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of characters after which to truncate a previewed message. To preview the full message, specify '0'.; "NOTE: Messages are not truncated by default. Messages are truncated by words."
          attribute :preview_length, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] '1' — to return history with online users only.
          attribute :onlines, API::Types::Form::Bool.optional.default(nil)
          # @return [Array] Additional  to return.
          attribute :fields, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default([])
          # @return [Integer] Maximum nimber of events to return.
          attribute :events_limit, API::Types::Coercible::Int.optional.default(1000)
          # @return [Integer] Maximum number of messages to return.
          attribute :msgs_limit, API::Types::Coercible::Int.optional.default(200)
          # @return [Integer] Maximum ID of the message among existing ones in the local copy. Both messages received with API methods (for example, , ), and data received from a Long Poll server (events with code 4) are taken into account.
          attribute :max_msg_id, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
