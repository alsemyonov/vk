# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Likes < Vk::Schema::Namespace
      module Methods
        # Checks for the object in the 'Likes' list of the specified user.
        class IsLiked < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'likes.isLiked'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id User ID.
          #   @option arguments [String] :type Object type:; 'post' — post on user or community wall; 'comment' — comment on a wall post; 'photo' — photo; 'audio' — audio; 'video' — video; 'note' — note; 'photo_comment' — comment on the photo; 'video_comment' — comment on the video; 'topic_comment' — comment in the discussion
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the object.
          #   @option arguments [Integer] :item_id Object ID.
          #   @return [Likes::Methods::IsLiked]

          # @!group Arguments

          # @return [Integer] User ID.
          attribute :user_id, API::Types::Coercible::Int.optional
          # @return [String] Object type:; 'post' — post on user or community wall; 'comment' — comment on a wall post; 'photo' — photo; 'audio' — audio; 'video' — video; 'note' — note; 'photo_comment' — comment on the photo; 'video_comment' — comment on the video; 'topic_comment' — comment in the discussion
          attribute :type, API::Types::Coercible::String.optional
          # @return [Integer] ID of the user or community that owns the object.
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [Integer] Object ID.
          attribute :item_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
