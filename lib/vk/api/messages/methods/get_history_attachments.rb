# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      module Methods
        # Returns media files from the dialog or group chat.
        class GetHistoryAttachments < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'messages.getHistoryAttachments'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :peer_id Peer ID.; ; "; For group chat:; '2000000000 + chat ID' ; ; For community:; '-community ID'"
          #   @option arguments [String] :media_type Type of media files to return:; *'photo';; *'video';; *'audio';; *'doc';; *'link'.;
          #   @option arguments [String] :start_from Message ID to start return results from.
          #   @option arguments [Integer] :count Number of objects to return.
          #   @option arguments [Boolean] :photo_sizes '1' — to return photo sizes in a
          #   @option arguments [Array] :fields Additional  to return.
          #   @return [Messages::Methods::GetHistoryAttachments]

          # @!group Arguments

          # @return [Integer] Peer ID.; ; "; For group chat:; '2000000000 + chat ID' ; ; For community:; '-community ID'"
          attribute :peer_id, API::Types::Coercible::Int
          # @return [String] Type of media files to return:; *'photo';; *'video';; *'audio';; *'doc';; *'link'.;
          attribute :media_type, API::Types::Coercible::String.optional.default(nil)
          # @return [String] Message ID to start return results from.
          attribute :start_from, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] Number of objects to return.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] '1' — to return photo sizes in a
          attribute :photo_sizes, API::Types::Bool.optional.default(nil)
          # @return [Array] Additional  to return.
          attribute :fields, API::Types::Coercible::Array.optional.default(nil)
        end
      end
    end
  end
end
