# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Board < Vk::Schema::Namespace
      module Methods
        # Creates a new topic on a community's discussion board.
        class AddTopic < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'board.addTopic'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id ID of the community that owns the discussion board.
          #   @option arguments [String] :title Topic title.
          #   @option arguments [String] :text Text of the topic.
          #   @option arguments [Boolean] :from_group For a community:; '1' — to post the topic as by the community; '0' — to post the topic as by the user (default)
          #   @option arguments [Array] :attachments List of media objects attached to the topic, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media object:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; '<owner_id>' — ID of the media owner. ; '<media_id>' — Media ID.; ; Example:; "photo100172_166443618,photo66748_265827614"; ; "NOTE: If you try to attach more than one reference, an error will be thrown.";
          #   @return [Board::Methods::AddTopic]

          # @!group Arguments

          # @return [Integer] ID of the community that owns the discussion board.
          attribute :group_id, API::Types::Coercible::Int.optional
          # @return [String] Topic title.
          attribute :title, API::Types::Coercible::String.optional
          # @return [String] Text of the topic.
          attribute :text, API::Types::Coercible::String.optional
          # @return [Boolean] For a community:; '1' — to post the topic as by the community; '0' — to post the topic as by the user (default)
          attribute :from_group, API::Types::Bool.optional
          # @return [Array] List of media objects attached to the topic, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media object:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; '<owner_id>' — ID of the media owner. ; '<media_id>' — Media ID.; ; Example:; "photo100172_166443618,photo66748_265827614"; ; "NOTE: If you try to attach more than one reference, an error will be thrown.";
          attribute :attachments, API::Types::Coercible::Array.optional
        end
      end
    end
  end
end
