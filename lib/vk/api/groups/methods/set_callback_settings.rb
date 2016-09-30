# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # Allow to set notifications settings for .
        class SetCallbackSettings < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'groups.setCallbackSettings'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID.
          #   @option arguments [Boolean] :message_new New messages notificaitions ('0' — disabled, '1' — enabled).
          #   @option arguments [Boolean] :photo_new New photos notificaitions ('0' — disabled, '1' — enabled).
          #   @option arguments [Boolean] :audio_new New audios notificaitions ('0' — disabled, '1' — enabled).
          #   @option arguments [Boolean] :video_new New videos notificaitions ('0' — disabled, '1' — enabled).
          #   @option arguments [Boolean] :wall_reply_new New wall replies notificaitions ('0' — disabled, '1' — enabled).
          #   @option arguments [Boolean] :wall_reply_edit Wall replies edited notificaitions ('0' — disabled, '1' — enabled).
          #   @option arguments [Boolean] :wall_post_new New wall posts notificaitions ('0' — disabled, '1' — enabled).
          #   @option arguments [Boolean] :board_post_new New board posts notificaitions ('0' — disabled, '1' — enabled).
          #   @option arguments [Boolean] :board_post_edit Board posts edited notificaitions ('0' — disabled, '1' — enabled).
          #   @option arguments [Boolean] :board_post_restore Board posts restored notificaitions ('0' — disabled, '1' — enabled).
          #   @option arguments [Boolean] :board_post_delete Board posts deleted notificaitions ('0' — disabled, '1' — enabled).
          #   @option arguments [Boolean] :photo_comment_new New comment to photo notificaitions ('0' — disabled, '1' — enabled).
          #   @option arguments [Boolean] :video_comment_new New comment to video notificaitions ('0' — disabled, '1' — enabled).
          #   @option arguments [Boolean] :market_comment_new New comment to market item notificaitions ('0' — disabled, '1' — enabled).
          #   @option arguments [Boolean] :group_join Joined community notificaitions ('0' — disabled, '1' — enabled).
          #   @option arguments [Boolean] :group_leave Left community notificaitions ('0' — disabled, '1' — enabled).
          #   @return [Groups::Methods::SetCallbackSettings]

          # @!group Arguments

          # @return [Integer] Community ID.
          attribute :group_id, API::Types::Coercible::Int
          # @return [Boolean] New messages notificaitions ('0' — disabled, '1' — enabled).
          attribute :message_new, API::Types::Bool.optional.default(nil)
          # @return [Boolean] New photos notificaitions ('0' — disabled, '1' — enabled).
          attribute :photo_new, API::Types::Bool.optional.default(nil)
          # @return [Boolean] New audios notificaitions ('0' — disabled, '1' — enabled).
          attribute :audio_new, API::Types::Bool.optional.default(nil)
          # @return [Boolean] New videos notificaitions ('0' — disabled, '1' — enabled).
          attribute :video_new, API::Types::Bool.optional.default(nil)
          # @return [Boolean] New wall replies notificaitions ('0' — disabled, '1' — enabled).
          attribute :wall_reply_new, API::Types::Bool.optional.default(nil)
          # @return [Boolean] Wall replies edited notificaitions ('0' — disabled, '1' — enabled).
          attribute :wall_reply_edit, API::Types::Bool.optional.default(nil)
          # @return [Boolean] New wall posts notificaitions ('0' — disabled, '1' — enabled).
          attribute :wall_post_new, API::Types::Bool.optional.default(nil)
          # @return [Boolean] New board posts notificaitions ('0' — disabled, '1' — enabled).
          attribute :board_post_new, API::Types::Bool.optional.default(nil)
          # @return [Boolean] Board posts edited notificaitions ('0' — disabled, '1' — enabled).
          attribute :board_post_edit, API::Types::Bool.optional.default(nil)
          # @return [Boolean] Board posts restored notificaitions ('0' — disabled, '1' — enabled).
          attribute :board_post_restore, API::Types::Bool.optional.default(nil)
          # @return [Boolean] Board posts deleted notificaitions ('0' — disabled, '1' — enabled).
          attribute :board_post_delete, API::Types::Bool.optional.default(nil)
          # @return [Boolean] New comment to photo notificaitions ('0' — disabled, '1' — enabled).
          attribute :photo_comment_new, API::Types::Bool.optional.default(nil)
          # @return [Boolean] New comment to video notificaitions ('0' — disabled, '1' — enabled).
          attribute :video_comment_new, API::Types::Bool.optional.default(nil)
          # @return [Boolean] New comment to market item notificaitions ('0' — disabled, '1' — enabled).
          attribute :market_comment_new, API::Types::Bool.optional.default(nil)
          # @return [Boolean] Joined community notificaitions ('0' — disabled, '1' — enabled).
          attribute :group_join, API::Types::Bool.optional.default(nil)
          # @return [Boolean] Left community notificaitions ('0' — disabled, '1' — enabled).
          attribute :group_leave, API::Types::Bool.optional.default(nil)
        end
      end
    end
  end
end
