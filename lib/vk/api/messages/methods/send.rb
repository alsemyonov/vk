# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      module Methods
        # Sends a message.
        class Send < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'messages.send'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id User ID (by default — current user).
          #   @option arguments [Integer] :random_id Unique identifier to avoid resending the message.
          #   @option arguments [Integer] :peer_id Destination ID.; ; "For user:; 'User ID', e.g. '12345'.; ; For chat:; '2000000000' + 'chat_id', e.g. '2000000001'.; ; For community:; '- community ID', e.g. '-12345'.; "
          #   @option arguments [String] :domain User's short address (for example, 'illarionov').
          #   @option arguments [Integer] :chat_id ID of conversation the message will relate to.
          #   @option arguments [Array] :user_ids IDs of message recipients (if new conversation shall be started).
          #   @option arguments [String] :message (Required if 'attachments' is not set.) Text of the message.
          #   @option arguments [Number] :lat Geographical latitude of a check-in, in degrees (from -90 to 90).
          #   @option arguments [Number] :long Geographical longitude of a check-in, in degrees (from -180 to 180).
          #   @option arguments [String] :attachment (Required if 'message' is not set.) List of objects attached to the message, separated by commas, in the following format:; "<owner_id>_<media_id>"; '' — Type of media attachment:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; 'wall' — wall post; '<owner_id>' — ID of the media attachment owner.; '<media_id>' — media attachment ID.; ; Example:; "photo100172_166443618"
          #   @option arguments [String] :forward_messages ID of forwarded messages, separated with a comma. Listed messages of the sender will be shown in the message body at the recipient's.; ; Example:; "123,431,544"
          #   @option arguments [Integer] :sticker_id Sticker id.
          #   @option arguments [Boolean] :notification '1' if the message is a notification (for community messages).
          #   @return [Messages::Methods::Send]

          # @!group Arguments

          # @return [Integer] User ID (by default — current user).
          attribute :user_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Unique identifier to avoid resending the message.
          attribute :random_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Destination ID.; ; "For user:; 'User ID', e.g. '12345'.; ; For chat:; '2000000000' + 'chat_id', e.g. '2000000001'.; ; For community:; '- community ID', e.g. '-12345'.; "
          attribute :peer_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] User's short address (for example, 'illarionov').
          attribute :domain, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] ID of conversation the message will relate to.
          attribute :chat_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Array] IDs of message recipients (if new conversation shall be started).
          attribute :user_ids, API::Types::Coercible::Array.member(API::Types::Coercible::Int).optional.default(nil)
          # @return [String] (Required if 'attachments' is not set.) Text of the message.
          attribute :message, API::Types::Coercible::String.optional.default(nil)
          # @return [Number] Geographical latitude of a check-in, in degrees (from -90 to 90).
          attribute :lat, API::Types::Coercible::Int.optional.default(nil)
          # @return [Number] Geographical longitude of a check-in, in degrees (from -180 to 180).
          attribute :long, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] (Required if 'message' is not set.) List of objects attached to the message, separated by commas, in the following format:; "<owner_id>_<media_id>"; '' — Type of media attachment:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; 'wall' — wall post; '<owner_id>' — ID of the media attachment owner.; '<media_id>' — media attachment ID.; ; Example:; "photo100172_166443618"
          attribute :attachment, API::Types::Coercible::String.optional.default(nil)
          # @return [String] ID of forwarded messages, separated with a comma. Listed messages of the sender will be shown in the message body at the recipient's.; ; Example:; "123,431,544"
          attribute :forward_messages, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] Sticker id.
          attribute :sticker_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] '1' if the message is a notification (for community messages).
          attribute :notification, API::Types::Form::Bool.optional.default(nil)
        end
      end
    end
  end
end
