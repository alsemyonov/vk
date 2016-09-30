# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Methods
        # Edits the text of a comment on a video.
        class EditComment < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'video.editComment'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the video.
          #   @option arguments [Integer] :comment_id Comment ID.
          #   @option arguments [String] :message New comment text.
          #   @option arguments [Array] :attachments List of objects attached to the comment, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media attachment:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; '<owner_id>' — ID of the media attachment owner.; '<media_id>' — Media attachment ID. ; ; Example:; "photo100172_166443618,photo66748_265827614"
          #   @return [Video::Methods::EditComment]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the video.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Comment ID.
          attribute :comment_id, API::Types::Coercible::Int
          # @return [String] New comment text.
          attribute :message, API::Types::Coercible::String.optional.default(nil)
          # @return [Array] List of objects attached to the comment, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media attachment:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; '<owner_id>' — ID of the media attachment owner.; '<media_id>' — Media attachment ID. ; ; Example:; "photo100172_166443618,photo66748_265827614"
          attribute :attachments, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
        end
      end
    end
  end
end
