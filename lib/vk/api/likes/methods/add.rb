# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Likes < Vk::Schema::Namespace
      module Methods
        # Adds the specified object to the 'Likes' list of the current user.
        class Add < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'likes.add'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :type Object type:; 'post' — post on user or community wall; 'comment' — comment on a wall post; 'photo' — photo; 'audio' — audio; 'video' — video; 'note' — note; 'photo_comment' — comment on the photo; 'video_comment' — comment on the video; 'topic_comment' — comment in the discussion; 'sitepage' — page of the site where the  is installed
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the object.
          #   @option arguments [Integer] :item_id Object ID.
          #   @option arguments [String] :access_key Access key required for an object owned by a private entity.;
          #   @return [Likes::Methods::Add]

          # @!group Arguments

          # @return [String] Object type:; 'post' — post on user or community wall; 'comment' — comment on a wall post; 'photo' — photo; 'audio' — audio; 'video' — video; 'note' — note; 'photo_comment' — comment on the photo; 'video_comment' — comment on the video; 'topic_comment' — comment in the discussion; 'sitepage' — page of the site where the  is installed
          attribute :type, API::Types::Coercible::String.optional
          # @return [Integer] ID of the user or community that owns the object.
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [Integer] Object ID.
          attribute :item_id, API::Types::Coercible::Int.optional
          # @return [String] Access key required for an object owned by a private entity.;
          attribute :access_key, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
