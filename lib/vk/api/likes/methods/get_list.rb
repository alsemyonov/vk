# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Likes < Vk::Schema::Namespace
      module Methods
        # Returns a list of IDs of users who added the specified object to their 'Likes' list.
        class GetList < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'likes.getList'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :type ; Object type:; 'post' — post on user or community wall; 'comment' — comment on a wall post; 'photo' — photo; 'audio' — audio; 'video' — video; 'note' — note; 'photo_comment' — comment on the photo; 'video_comment' — comment on the video; 'topic_comment' — comment in the discussion; 'sitepage' — page of the site where the  is installed
          #   @option arguments [Integer] :owner_id ID of the user, community, or application that owns the object. If the 'type' parameter is set as 'sitepage', the application ID is passed as 'owner_id'. Use negative value for a community id. If the 'type' parameter is not set, the 'owner_id' is assumed to be either the current user or the same application ID as if the 'type' parameter was set to 'sitepage'.; ;
          #   @option arguments [Integer] :item_id Object ID. If 'type' is set as 'sitepage', 'item_id' can include the 'page_id' parameter value used during initialization of the .
          #   @option arguments [String] :page_url URL of the page where the  is installed. Used instead of the 'item_id' parameter.
          #   @option arguments [String] :filter Filters to apply:; 'likes' — returns information about all users who liked the object (default); 'copies' — returns information only about users who told their friends about the object
          #   @option arguments [Boolean] :friends_only Specifies which users are returned:; '1' — to return only the current user's friends; '0' — to return all users (default)
          #   @option arguments [Boolean] :extended Specifies whether extended information will be returned.; '1' — to return extended information about users and communities from the 'Likes' list; '0' — to return no additional information (default)
          #   @option arguments [Integer] :offset Offset needed to select a specific subset of users.
          #   @option arguments [Integer] :count Number of user IDs to return (maximum '1000').; Default is '100' if 'friends_only' is set to  '0'; otherwise, the default is '10' if 'friends_only' is set to '1'.;
          #   @option arguments [Boolean] :skip_own @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Likes::Methods::GetList]

          # @!group Arguments

          # @return [String] ; Object type:; 'post' — post on user or community wall; 'comment' — comment on a wall post; 'photo' — photo; 'audio' — audio; 'video' — video; 'note' — note; 'photo_comment' — comment on the photo; 'video_comment' — comment on the video; 'topic_comment' — comment in the discussion; 'sitepage' — page of the site where the  is installed
          attribute :type, API::Types::Coercible::String
          # @return [Integer] ID of the user, community, or application that owns the object. If the 'type' parameter is set as 'sitepage', the application ID is passed as 'owner_id'. Use negative value for a community id. If the 'type' parameter is not set, the 'owner_id' is assumed to be either the current user or the same application ID as if the 'type' parameter was set to 'sitepage'.; ;
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Object ID. If 'type' is set as 'sitepage', 'item_id' can include the 'page_id' parameter value used during initialization of the .
          attribute :item_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] URL of the page where the  is installed. Used instead of the 'item_id' parameter.
          attribute :page_url, API::Types::Coercible::String.optional.default(nil)
          # @return [String] Filters to apply:; 'likes' — returns information about all users who liked the object (default); 'copies' — returns information only about users who told their friends about the object
          attribute :filter, API::Types::Coercible::String.optional.default(nil)
          # @return [Boolean] Specifies which users are returned:; '1' — to return only the current user's friends; '0' — to return all users (default)
          attribute :friends_only, API::Types::Bool.optional.default(nil)
          # @return [Boolean] Specifies whether extended information will be returned.; '1' — to return extended information about users and communities from the 'Likes' list; '0' — to return no additional information (default)
          attribute :extended, API::Types::Bool.optional.default(nil)
          # @return [Integer] Offset needed to select a specific subset of users.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of user IDs to return (maximum '1000').; Default is '100' if 'friends_only' is set to  '0'; otherwise, the default is '10' if 'friends_only' is set to '1'.;
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :skip_own, API::Types::Bool.optional.default(nil)
        end
      end
    end
  end
end
