# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Market < Vk::Schema::Namespace
      module Methods
        # Chages item comment's text
        class EditComment < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'market.editComment'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of an item owner community.
          #   @option arguments [Integer] :comment_id Comment ID.
          #   @option arguments [String] :message New comment text (required if 'attachments' are not specified); ; 2048 symbols maximum.
          #   @option arguments [Array] :attachments Comma-separated list of objects attached to a comment. The field is submitted the following way: ; "'<owner_id>_<media_id>,<owner_id>_<media_id>'"; ; '' - media attachment type:; "'photo' - photo; 'video' - video; 'audio' - audio; 'doc' - document"; ; '<owner_id>' - media owner id; '<media_id>' - media attachment id; ; For example:; "photo100172_166443618,photo66748_265827614";
          #   @return [Market::Methods::EditComment]

          # @!group Arguments

          # @return [Integer] ID of an item owner community.
          attribute :owner_id, API::Types::Coercible::Int
          # @return [Integer] Comment ID.
          attribute :comment_id, API::Types::Coercible::Int
          # @return [String] New comment text (required if 'attachments' are not specified); ; 2048 symbols maximum.
          attribute :message, API::Types::Coercible::String.optional.default(nil)
          # @return [Array] Comma-separated list of objects attached to a comment. The field is submitted the following way: ; "'<owner_id>_<media_id>,<owner_id>_<media_id>'"; ; '' - media attachment type:; "'photo' - photo; 'video' - video; 'audio' - audio; 'doc' - document"; ; '<owner_id>' - media owner id; '<media_id>' - media attachment id; ; For example:; "photo100172_166443618,photo66748_265827614";
          attribute :attachments, API::Types::Coercible::Array.optional.default(nil)
        end
      end
    end
  end
end
