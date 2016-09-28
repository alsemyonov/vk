# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      module Methods
        # Edits a comment on a user wall or community wall.;
        class EditComment < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'wall.editComment'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id User ID or community ID. Use a negative value to designate a community ID.; ;
          #   @option arguments [Integer] :comment_id Comment ID.
          #   @option arguments [String] :message New comment text.;
          #   @option arguments [Array] :attachments List of objects attached to the comment, in the following format:; ; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media attachment:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; '<owner_id>' — ID of the media attachment owner.; '<media_id>' — Media attachment ID. ; ; For example:; "photo100172_166443618,photo66748_265827614"
          #   @return [Wall::Methods::EditComment]

          # @!group Arguments

          # @return [Integer] User ID or community ID. Use a negative value to designate a community ID.; ;
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [Integer] Comment ID.
          attribute :comment_id, API::Types::Coercible::Int.optional
          # @return [String] New comment text.;
          attribute :message, API::Types::Coercible::String.optional
          # @return [Array] List of objects attached to the comment, in the following format:; ; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media attachment:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; '<owner_id>' — ID of the media attachment owner.; '<media_id>' — Media attachment ID. ; ; For example:; "photo100172_166443618,photo66748_265827614"
          attribute :attachments, API::Types::Coercible::Array.optional
        end
      end
    end
  end
end
