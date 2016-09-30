# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Market < Vk::Schema::Namespace
      module Methods
        # Creates a new comment for an item.
        class CreateComment < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'market.createComment'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of an item owner community.
          #   @option arguments [Integer] :item_id Item ID.
          #   @option arguments [String] :message Comment text (required if 'attachments' parameter is not specified)
          #   @option arguments [Array] :attachments Comma-separated list of objects attached to a comment. The field is submitted the following way: ; "'<owner_id>_<media_id>,<owner_id>_<media_id>'"; ; '' - media attachment type:; "'photo' - photo; 'video' - video; 'audio' - audio; 'doc' - document"; ; '<owner_id>' - media owner id; '<media_id>' - media attachment id; ; For example:; "photo100172_166443618,photo66748_265827614";
          #   @option arguments [Boolean] :from_group '1' - comment will be published on behalf of a community, '0' - on behalf of a user (by default).
          #   @option arguments [Integer] :reply_to_comment ID of a comment to reply with current comment to.
          #   @option arguments [Integer] :sticker_id Sticker ID.
          #   @option arguments [String] :guid Random value to avoid resending one comment.
          #   @return [Market::Methods::CreateComment]

          # @!group Arguments

          # @return [Integer] ID of an item owner community.
          attribute :owner_id, API::Types::Coercible::Int
          # @return [Integer] Item ID.
          attribute :item_id, API::Types::Coercible::Int
          # @return [String] Comment text (required if 'attachments' parameter is not specified)
          attribute :message, API::Types::Coercible::String.optional.default(nil)
          # @return [Array] Comma-separated list of objects attached to a comment. The field is submitted the following way: ; "'<owner_id>_<media_id>,<owner_id>_<media_id>'"; ; '' - media attachment type:; "'photo' - photo; 'video' - video; 'audio' - audio; 'doc' - document"; ; '<owner_id>' - media owner id; '<media_id>' - media attachment id; ; For example:; "photo100172_166443618,photo66748_265827614";
          attribute :attachments, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
          # @return [Boolean] '1' - comment will be published on behalf of a community, '0' - on behalf of a user (by default).
          attribute :from_group, API::Types::Form::Bool.optional.default(nil)
          # @return [Integer] ID of a comment to reply with current comment to.
          attribute :reply_to_comment, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Sticker ID.
          attribute :sticker_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] Random value to avoid resending one comment.
          attribute :guid, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
